# CP4 — Khảo sát nhanh về báo cáo tiến độ nhóm

## Nhập kết quả bằng giao diện

Mở [`src/cp4-survey/index.html`](../../src/cp4-survey/index.html) bằng Edge/Chrome để nhập từng phiếu, sửa/xóa, xem tỷ lệ và xuất CSV/Markdown. Không cần cài thư viện hoặc chạy server. Xem [hướng dẫn sử dụng](../../src/cp4-survey/README.md). Giao diện không gửi dữ liệu lên mạng; sau khi nhập, xuất JSON để sao lưu và chuyển CSV/Markdown vào `report/assets/` trước khi cập nhật báo cáo nhóm.

## Lời giới thiệu

Khảo sát 2–3 phút dành cho sinh viên từng trực tiếp viết hoặc gom báo cáo tiến độ nhóm. Mục đích là tìm hiểu quy trình đã xảy ra, không đánh giá người trả lời và không thu thông tin nhận dạng.

## Câu hỏi

### 1. Trong ba tháng gần nhất, bạn đã trực tiếp viết hoặc gom báo cáo tiến độ cho nhóm bao nhiêu lần?

- 0 lần
- 1–2 lần
- 3–5 lần
- Trên 5 lần

### 2. Ở lần gần nhất, bạn mất bao lâu để hoàn thành báo cáo?

- Dưới 15 phút
- 15–30 phút
- 31–60 phút
- Trên 60 phút

### 3. Ở lần đó, bạn phải mở những nguồn nào để biết nhóm đã làm gì?

Chọn tất cả phương án phù hợp:

- GitHub hoặc nền tảng quản lý mã nguồn
- Zalo, Messenger, Discord, Teams hoặc kênh chat khác
- Ghi chú hoặc file ghi âm cuộc họp
- Task board như Trello, Notion, Jira hoặc GitHub Projects
- Google Docs, Sheets hoặc tài liệu dùng chung
- Nguồn khác

### 4. Bước nào mất nhiều thời gian nhất ở lần gần nhất?

- Tìm dữ liệu từ nhiều nguồn
- Hỏi lại thành viên về phần việc còn thiếu
- Kiểm tra thông tin có đúng và đủ không
- Viết phần nhận định và kế hoạch kỳ tiếp theo
- Định dạng và gửi báo cáo

### 5. Trong ba kỳ báo cáo gần nhất, đã có lần nào báo cáo thiếu việc hoặc bạn phải hỏi lại thành viên không?

- Không
- 1 lần
- 2 lần
- 3 lần

### 6. Nhóm bạn hiện lưu tiến độ theo cách nào?

Câu trả lời ngắn, mô tả cách nhóm đang làm thực tế.

### 7. Điều gì khiến cách hiện tại chưa giải quyết hoàn toàn việc tổng hợp báo cáo?

Câu trả lời ngắn. Nếu cách hiện tại đã đủ tốt, ghi rõ điểm giúp quy trình hoạt động hiệu quả.

## Cách xuất kết quả

Xuất bảng phản hồi từ công cụ khảo sát, bỏ mọi cột nhận dạng nếu có, rồi tổng hợp:

- Tổng số phản hồi và số phản hồi hợp lệ.
- Tỷ lệ mất trên 30 phút.
- Ba nguồn được mở nhiều nhất.
- Bottleneck được chọn nhiều nhất.
- Tỷ lệ từng thiếu việc hoặc phải hỏi lại.
- Hai đến bốn workaround phổ biến.
- Ít nhất một tín hiệu phản bác.

## Nguồn cần bổ sung để đối chiếu bảng tổng hợp

### Nguồn hiện tìm thấy trong Git

| Tài liệu | Nguồn truy vết | Chứng minh được gì? |
|---|---|---|
| Bộ câu hỏi và bảng tổng hợp CP4 | [Commit 492b7f7](https://github.com/Ntd1411/K5-L3A-DAY02-Nhom4AE-DiscoveryProblemFraming/commit/492b7f7e35330605948cfc580506892cbf1cdd63), tác giả Git NTD, ngày 09/11/2026 | Bảng tổng hợp đã được đưa vào tài liệu; chưa chứng minh thời điểm khảo sát, danh tính theo vai trò hoặc câu trả lời từng người |
| Baseline 38/71/55 phút | [Card Phát](../individual/2A202603536_TranHoangPhat.md), mục 2 và Card #1; [commit ca52d1b](https://github.com/Ntd1411/K5-L3A-DAY02-Nhom4AE-DiscoveryProblemFraming/commit/ca52d1b479cc842e567e5815691d8b2331f9e226) | Ba mốc tự báo cáo của người trong nhóm; không tính vào mẫu khảo sát người ngoài nhóm |
| Phản hồi gốc và thông tin thu thập | Chưa tìm thấy trên main hoặc các nhánh đã fetch ngày 09/11/2026 | Chưa thể tái tính tỷ lệ hoặc xác nhận ai trực tiếp thu thập |

### Cách hoàn tất nguồn

Hiện repo có bộ câu hỏi và bảng tổng hợp trong báo cáo nhóm. Chưa có phản hồi gốc đã ẩn danh, thời điểm và kênh thực hiện thực tế; thời điểm commit không thay thế thời điểm khảo sát.

Người thực hiện khảo sát cần bổ sung:

- Bản xuất phản hồi thật đã bỏ họ tên, email, số điện thoại; có thể đặt tại `report/assets/cp4-survey-responses.csv`.
- Thời điểm hoặc khoảng thời gian thu thập và kênh đã dùng, ghi đúng thực tế thay vì để lựa chọn “trực tiếp hoặc Forms”.
- Mã người trả lời ẩn danh, vai trò và xác nhận thuộc nhóm khác; câu trả lời câu 1–7, kèm lý do loại phản hồi không hợp lệ.

Đối chiếu từ dữ liệu gốc: 8 phản hồi, 7 hợp lệ; 4/7 mất trên 30 phút; 5/7 từng thiếu việc/hỏi lại; các tỷ lệ nguồn và tín hiệu phản bác. Nếu bản gốc khác bảng hiện tại thì sửa bảng theo bản gốc. Không tạo tám dòng phản hồi từ các tỷ lệ đã có hoặc xem các ô thiếu là 0.

Mỗi phản hồi cần có các trường sau; chỉ nhập từ bản ghi có thật:

| Nhóm trường | Nội dung |
|---|---|
| Nguồn | Mã phản hồi ẩn danh, vai trò, thuộc nhóm khác, thời điểm, kênh thu thập và mã ghi chép/bản xuất |
| Hành vi | Câu trả lời nguyên ý Q1–Q7; không tự bổ sung lựa chọn còn thiếu |
| Hợp lệ | Có từng làm báo cáo trong ba tháng gần nhất; lý do loại nếu không hợp lệ |
| Đối chiếu | Người tổng hợp kiểm đếm và ngày đối chiếu; giữ riêng bản phản hồi với bảng tỷ lệ |

Nếu không còn bản gốc, cần thực hiện lượt khảo sát mới và ghi đúng ngày/kênh mới; thay bảng tổng hợp bằng kết quả của lượt đó. Không đặt ngày thu thập bằng ngày commit hoặc điền câu trả lời cho đủ tỷ lệ cũ.
