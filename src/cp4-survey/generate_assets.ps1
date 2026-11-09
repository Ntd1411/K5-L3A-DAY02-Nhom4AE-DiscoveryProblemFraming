param()
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

$backupPath = Join-Path $PSScriptRoot "cp4-survey-backup.json"
$backup = Get-Content -Raw -Encoding UTF8 $backupPath | ConvertFrom-Json
$records = $backup.records

$SOURCES = [ordered]@{
    github = "GitHub / quản lý mã nguồn"
    chat = "Chat"
    meeting = "Ghi chú / ghi âm họp"
    board = "Task board"
    docs = "Tài liệu chung"
    other = "Nguồn khác"
}

$BOTTLENECKS = [ordered]@{
    collect = "Tìm dữ liệu nhiều nguồn"
    ask = "Hỏi lại thành viên"
    check = "Kiểm tra đúng và đủ"
    write = "Viết nhận định / kế hoạch"
    format = "Định dạng và gửi"
}

$FREQUENCIES = @{
    "0" = "0 lần"
    "1-2" = "1–2 lần"
    "3-5" = "3–5 lần"
    "5+" = "Trên 5 lần"
}

$DURATIONS = @{
    "under15" = "Dưới 15 phút"
    "15-30" = "15–30 phút"
    "31-60" = "31–60 phút"
    "over60" = "Trên 60 phút"
}

function Get-Reasons($r) {
    $res = @()
    if ($r.outside_group -eq "no") { $res += "Thành viên nhóm mình" }
    if ($r.outside_group -eq "unknown") { $res += "Chưa xác định nhóm" }
    if ($r.q1 -eq "0") { $res += "Chưa làm báo cáo trong 3 tháng" }
    if ($r.manual_exclude) { $res += $r.exclusion_reason }
    if ($r.q1 -ne "0" -and (-not $r.q2 -or $r.q3.Count -eq 0 -or -not $r.q4 -or -not $r.q5 -or -not $r.q6.Trim() -or -not $r.q7.Trim())) {
        $res += "Thiếu câu trả lời 2–7"
    }
    return $res
}

$validRecords = @()
foreach ($r in $records) {
    $reasons = Get-Reasons $r
    if ($reasons.Count -eq 0) {
        $validRecords += $r
    }
}

$n = $validRecords.Count
$total = $records.Count
$slowCount = @($validRecords | Where-Object { $_.q2 -in @("31-60", "over60") }).Count
$missingCount = @($validRecords | Where-Object { $_.q5 -ne "0" }).Count

function Format-Pct($count, $tot) {
    if ($tot -eq 0) { return "—" }
    $p = [math]::Round(($count * 100.0 / $tot), 1)
    return "$p%"
}

# CSV Generation
$csvHeaders = @("response_id","role","collected_at","channel","source_ref","outside_group","q1_frequency","q2_duration","q3_sources","q3_other","q4_bottleneck","q5_missing_or_followup","q6_workaround","q7_gap_or_counterevidence","valid","exclusion_reason")
$csvRows = @()

foreach ($r in $records) {
    $reasons = Get-Reasons $r
    $isValid = if ($reasons.Count -eq 0) { "true" } else { "false" }
    $exReason = $reasons -join "; "
    $q3Names = ($r.q3 | ForEach-Object { $SOURCES[$_] }) -join " | "
    $q5Text = if ($r.q5 -eq "") { "" } elseif ($r.q5 -eq "0") { "Không" } else { "$($r.q5) lần" }

    $row = [ordered]@{
        response_id = $r.response_id
        role = $r.role
        collected_at = $r.collected_at
        channel = $r.channel
        source_ref = $r.source_ref
        outside_group = $r.outside_group
        q1_frequency = $FREQUENCIES[$r.q1]
        q2_duration = $DURATIONS[$r.q2]
        q3_sources = $q3Names
        q3_other = $r.q3_other
        q4_bottleneck = $BOTTLENECKS[$r.q4]
        q5_missing_or_followup = $q5Text
        q6_workaround = $r.q6
        q7_gap_or_counterevidence = $r.q7
        valid = $isValid
        exclusion_reason = $exReason
    }
    $csvRows += [PSCustomObject]$row
}

$csvPath = Join-Path $PSScriptRoot "../../report/assets/cp4-survey-responses.csv"
$csvRows | Export-Csv -Path $csvPath -NoTypeInformation -Encoding UTF8

# Markdown Summary Generation
$mdLines = @(
    "# CP4 — Kết quả khảo sát thực tế"
    ""
    "Tổng hợp từ $total phiếu thu thập; tỷ lệ tính trên $n phiếu hợp lệ."
    ""
    "| Chỉ số | Kết quả |"
    "|---|---|"
    "| Tổng phản hồi | $total |"
    "| Phản hồi hợp lệ | $n |"
    "| Chưa tính / bị loại | $($total - $n) (P03: chưa từng gom/viết báo cáo tiến độ trong 3 tháng) |"
    "| Mất trên 30 phút | $(Format-Pct $slowCount $n) ($slowCount/$n) |"
    "| Từng thiếu việc hoặc hỏi lại | $(Format-Pct $missingCount $n) ($missingCount/$n) |"
    ""
    "## Nguồn dữ liệu và vai trò"
    ""
    "| Mã | Vai trò | Ngày | Kênh | Nguồn ghi chép | Tình trạng |"
    "|---|---|---|---|---|---|"
)

foreach ($r in $records) {
    $reasons = Get-Reasons $r
    $statusText = if ($reasons.Count -eq 0) { "Hợp lệ" } else { $reasons -join "; " }
    $mdLines += "| $($r.response_id) | $($r.role) | $($r.collected_at) | $($r.channel) | $($r.source_ref) | $statusText |"
}

$mdLines += ""
$mdLines += "## Các nguồn đã mở"
$mdLines += ""
$mdLines += "| Nguồn (chọn nhiều) | Số người | Tỷ lệ |"
$mdLines += "|---|---:|---:|"

foreach ($k in $SOURCES.Keys) {
    $cnt = @($validRecords | Where-Object { $_.q3 -contains $k }).Count
    $mdLines += "| $($SOURCES[$k]) | $cnt/$n | $(Format-Pct $cnt $n) |"
}

$mdLines += ""
$mdLines += "## Bước tốn thời gian nhất"
$mdLines += ""
$mdLines += "| Bước | Số người | Tỷ lệ |"
$mdLines += "|---|---:|---:|"

foreach ($k in $BOTTLENECKS.Keys) {
    $cnt = @($validRecords | Where-Object { $_.q4 -eq $k }).Count
    $mdLines += "| $($BOTTLENECKS[$k]) | $cnt/$n | $(Format-Pct $cnt $n) |"
}

$mdLines += ""
$mdLines += "## Câu trả lời mở của phiếu hợp lệ"
$mdLines += ""
$mdLines += "| Mã | Cách xử lý hiện tại (Q6) | Khoảng trống / phản bác (Q7) |"
$mdLines += "|---|---|---|"

foreach ($r in $validRecords) {
    $q6Clean = $r.q6 -replace "\|", "\|" -replace "`r?`n", "<br>"
    $q7Clean = $r.q7 -replace "\|", "\|" -replace "`r?`n", "<br>"
    $mdLines += "| $($r.response_id) | $q6Clean | $q7Clean |"
}

$under15Count = ($validRecords | Where-Object { $_.q2 -eq "under15" }).Count
$mdLines += ""
$mdLines += "## Tín hiệu cần đối chiếu cho Rubric C7"
$mdLines += ""
$mdLines += "- **Tín hiệu phản bác (hoàn thành dưới 15 phút):** $under15Count/$n (phiếu P05 - nhóm 3 người chốt tiến độ trực tiếp trong 15 phút họp tuần)."
$mdLines += "- **Xác thực bottleneck thời gian:** $slowCount/$n ($(Format-Pct $slowCount $n)) mất trên 30 phút, trong đó 2 người mất trên 60 phút do phải chờ đợi và nhắn hỏi lại nhiều lần."
$mdLines += "- **Xác thực nguyên nhân thông tin phân tán:** $missingCount/$n ($(Format-Pct $missingCount $n)) từng gặp tình trạng thiếu việc hoặc phải nhắn hỏi lại thành viên trong 3 kỳ gần nhất."
$mdLines += "- **Nhóm đã điều chỉnh gì:** Tập trung giải quyết cho trường hợp các nhóm làm việc phân tán qua chat và code mà thiếu quy ước cập nhật định kỳ; không áp dụng giải pháp cồng kềnh cho các nhóm nhỏ đã vận hành tốt theo mô hình họp chốt nhanh như P05."

$summaryMdPath = Join-Path $PSScriptRoot "../../report/assets/cp4-survey-summary.md"
$mdLines -join "`r`n" | Set-Content -Path $summaryMdPath -Encoding UTF8

Write-Host "Success: Generated CSV and Summary MD!"
