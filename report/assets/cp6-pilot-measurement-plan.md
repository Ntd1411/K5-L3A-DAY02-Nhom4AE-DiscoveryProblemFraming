# CP6 — Kế hoạch đo và kiểm tra pilot Rule

Tài liệu hỗ trợ CP5–CP6 của Lê Sông Thao, quy định kế hoạch và phương pháp đo lường khi triển khai quyết định [Go — pilot nhỏ](../team/group_report.md#8-quyết-định-cp6).

## 1. Điều kiện trước khi đo

| Việc | Người phụ trách theo TEAM | Đầu ra cần có |
|---|---|---|
| Đối chiếu bảng khảo sát và baseline | Phát, Thao hỗ trợ | Phản hồi gốc đã ẩn danh, vai trò ngoài nhóm, thời điểm/kênh thu thập; log baseline nếu còn lưu |
| Kiểm tra yêu cầu người nhận | Phát | Yêu cầu nội dung/định dạng báo cáo được ghi lại từ nguồn thực tế |
| Chuẩn bị dữ liệu và Rule | Giang | Nguồn được phép, phiên bản quy tắc, khả năng export và phương án thủ công |
| Chuẩn bị ghi nhận | Thao | Hai mẫu CSV dưới đây và checklist năm tiêu chí |
| Điều phối | Dũng | Mốc bắt đầu/kết thúc kỳ và người chịu trách nhiệm mỗi việc |

Các hàng là trách nhiệm cho bước tiếp theo, không phải biên bản đã hoàn thành. Nếu không lấy được nguồn hoặc chưa rõ quyền đọc thì chưa bắt đầu chạy Rule trên nguồn đó.

## 2. Tập việc đối chiếu độc lập

Trước khi xem kết quả Rule, Phát và từng thành viên đối chiếu công việc từ task board, tài liệu họp và nguồn được phép, gồm cả việc ngoài code. Lưu một bản dữ liệu cố định của kỳ với mã task, owner, hạng mục, trạng thái, ngày hoàn thành, nguồn và xác nhận. Rule chỉ đọc bản này; thông tin cần sửa do người có trách nhiệm cập nhật và ghi lại lý do.

- Kỳ dùng GMT+7: `period_start <= completed_at < period_end`. Ngày cuối là đầu kỳ tiếp theo.
- Tập **E** gồm task Done được chủ việc xác nhận, đủ trường, có nguồn hợp lệ, hoàn thành trong kỳ; mỗi `task_id` duy nhất một lần.
- Tập **D** là task được bản nháp Rule liệt kê trong phần hoàn thành, trước khi người kiểm sửa.
- Bỏ sót = `E - D`; lấy thừa = `D - E`. Trùng là số lần xuất hiện vượt một lần của cùng task trong D, không bị phép chuyển thành tập che mất.
- Sau sửa, kiểm tra lại bản cuối nhưng giữ kết quả chấm bản nháp để đo lỗi Rule. Không sửa mất lịch sử lỗi để biến một lần chạy hỏng thành đạt.
- Nếu E rỗng và đã xác nhận đủ bốn người: ghi 0 việc hợp lệ, số bỏ sót 0, tỷ lệ bao phủ là “không áp dụng”; không ghi 100% khi mẫu số bằng 0. Nếu nguồn thiếu hoặc chưa xác nhận thì chưa xác định được E, không được kết luận không có công việc.
- Mục chưa đủ trường nằm trong danh sách chờ xác nhận; việc đang làm, blocker và kế hoạch nằm riêng, không cộng vào Done. Mỗi kế hoạch phải có người xác nhận, không tự suy deadline từ commit.

[Mẫu đối chiếu task](cp6-pilot-task-review-template.csv) chưa có hàng dữ liệu. Một dòng cho mỗi task được tìm thấy trong nguồn hoặc đầu ra; giữ cả mục ngoài kỳ/không hợp lệ và ghi lý do. Nếu nguồn không truy cập được, ghi ở nhật ký sự kiện, không tự tạo task đại diện.

## 3. Thời gian và tổng công sức

[Mẫu ghi sự kiện](cp6-pilot-time-log-template.csv) chưa có hàng dữ liệu. Mỗi dòng là một khoảng thời gian có người thực hiện, hoạt động, thời điểm bắt đầu/kết thúc và nguồn đối chiếu.

| Trường | Cách dùng |
|---|---|
| `run_id`, `period_start`, `period_end` | Mã lần đo và kỳ dữ liệu; thời điểm ISO 8601 có múi giờ |
| `method` | `manual`, `rule` hoặc `fallback`; không trộn các lần đo |
| `rule_version`, `snapshot_ref` | Phiên bản quy tắc và bản dữ liệu cố định; thủ công ghi `not_applicable` cho phiên bản Rule |
| `member_id` | Người thực hiện; dùng mã thống nhất cho bốn thành viên |
| `activity` | `setup`, `task_update`, `collect_filter`, `reconcile`, `group`, `write`, `review`, `send`, `member_response`, `wait_response`, `fallback`, `unrelated_break` |
| `started_at`, `ended_at` | Thời gian thực tế; không điền lại cho khớp 21 phút |
| `person_minutes` | Phút thao tác thực tế của người đó trong khoảng; chờ thụ động ghi 0, thời gian chờ vẫn lấy từ mốc bắt đầu/kết thúc |
| `evidence_ref`, `note` | Nguồn và lý do lỗi/chờ/quay về; ghi thiếu dữ liệu nếu chưa biết |

**Thời gian lập báo cáo:** từ bắt đầu lấy dữ liệu đến lúc hoàn thành duyệt/gửi, trừ nghỉ không liên quan đã ghi rõ; giữ thời gian chờ cần thiết. Target **dưới 25 phút/kỳ**. Hai pha Rule cộng cả chạy lại **không quá 3 phút**; nếu thời gian trùng nhau, dùng hợp các khoảng, không cộng lặp.

**Công sức cả nhóm:** cộng phút thao tác của người tổng hợp, cập nhật task của cả bốn người và phản hồi bổ sung của các thành viên khác. Không cộng thời gian chờ thụ động thành công sức; không ghi cùng một thao tác vừa là cập nhật vừa là trả lời. Mỗi người cập nhật task **không quá 10 phút/kỳ**. Chi phí thiết lập/bảo trì được ghi riêng và báo cùng kết quả để đánh giá có đáng duy trì hay không.

**Baseline:** ba mốc 38/71/55 của Phát chưa có quy ước chờ/thao tác kèm log. Giữ giá trị tham chiếu, không công bố phần trăm cải thiện trước khi xác nhận cùng cách đo. Chưa có baseline tổng công sức bốn người nên không so tổng nhóm với 55 phút của riêng Phát.

## 4. So sánh với No AI

Trước khi chọn dùng lâu dài, đối chiếu lọc/gom thủ công với Rule trên cùng bản dữ liệu, cùng kỳ, template và checklist. Làm trên bản sao; chỉ bản chính thức được Phát duyệt và gửi một lần. Không tính một lần chạy đối chứng thành một kỳ pilot đã đạt.

Giữ riêng thời gian lọc/gom, sửa lỗi và các bước người viết/duyệt. Đổi thứ tự manual → Rule ở một lần, Rule → manual ở lần khác để nhận diện ảnh hưởng đã quen dữ liệu; ghi thứ tự vào `note`. Một phép so sánh nhỏ chưa đủ để khẳng định kết quả tổng quát.

Nếu thủ công đã đạt dưới 25 phút, đủ/đúng nguồn và tổng công sức không cao hơn Rule, ưu tiên No AI. Nếu Rule giảm thao tác cơ học nhưng chi phí thiết lập/bảo trì lớn, ghi rõ đánh đổi trước khi quyết định duy trì. Chỉ cân nhắc Workflow khi time log chỉ ra phần viết nhận định còn nghẽn sau khi dữ liệu đã đầy đủ.

## 5. Chấm đạt và hành động

| Tiêu chí | Kiểm tra | Hành động khi chưa đạt |
|---|---|---|
| 1. Đầy đủ | Không thiếu task trong E, không đếm trùng | Ghi lỗi bản nháp, bổ sung trước gửi; áp dụng ngưỡng dừng của nhóm |
| 2. Chính xác | Không lấy thừa, đúng owner, hạng mục, trạng thái và kỳ | Hỏi người phụ trách; đối chiếu lại nguồn sau sửa |
| 3. Truy vết | Mọi mục có nguồn đọc được, nhận định/kế hoạch có căn cứ | Giữ trong danh sách cần kiểm tra cho tới khi đủ căn cứ |
| 4. Thời gian | Tổng dưới 25 phút, Rule không quá 3 phút; cập nhật mỗi người không quá 10 phút/kỳ | Ghi bước vượt ngưỡng, không bỏ thời gian sửa/chờ để đạt |
| 5. Quyền và duyệt | Chỉ đọc nguồn cho phép; không sửa nguồn hoặc tự gửi | Dừng ngay, dùng phương án thủ công trong phạm vi được phép |

Đánh giá sau hai kỳ: dừng Rule nếu cả hai kỳ từ 25 phút trở lên, có task hợp lệ bị bỏ sót, hoặc có người cập nhật quá 10 phút/kỳ. Hai kỳ đầu đều đạt mới tiếp tục tới bốn kỳ liên tiếp. Một kỳ trượt chưa đủ ngưỡng dừng thời gian vẫn là chưa đạt; sửa nguyên nhân trước vòng tiếp theo. Nếu thay đổi đáng kể quy tắc/phạm vi/cách đo thì bắt đầu lại chuỗi bốn kỳ.

Đầu ra mỗi kỳ gồm dữ liệu cố định, hai nhật ký đã điền, bản nháp trước sửa, bản cuối và kết luận theo năm tiêu chí. Chưa có các đầu ra này thì chỉ ghi trạng thái chưa chạy.
