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

### Nguồn dữ liệu khảo sát thực tế (Cập nhật ngày 09/11/2026)

| Tài liệu | Vị trí lưu | Chứng minh được gì? |
|---|---|---|
| Dữ liệu phản hồi gốc đã ẩn danh | [`cp4-survey-responses.csv`](cp4-survey-responses.csv) | 10 phiếu chi tiết (P01–P10) gồm vai trò ngoài nhóm, ngày (09/11/2026), kênh (Trực tiếp, Zalo, Messenger, Discord), nguồn ghi chép và câu trả lời nguyên văn Q1–Q7. |
| Bảng tổng hợp tự động | [`cp4-survey-summary.md`](cp4-survey-summary.md) | Thống kê tự động: 9/10 hợp lệ, 1/10 loại hợp lệ (P03 do chưa từng làm báo cáo trong 3 tháng); tỷ lệ mất trên 30 phút (66,7%), tỷ lệ thiếu việc/hỏi lại (88,9%), phân bố nguồn và bước bottleneck. |
| Bản sao lưu và công cụ nhập liệu | [`src/cp4-survey/`](../../src/cp4-survey/) | Bản sao lưu [`cp4-survey-backup.json`](../../src/cp4-survey/cp4-survey-backup.json) và giao diện [`index.html`](../../src/cp4-survey/index.html) để nạp, kiểm tra và xuất dữ liệu ngoại tuyến. |
| Baseline nội bộ | [Card Phát](../individual/2A202603536_TranHoangPhat.md), mục 2 | 3 kỳ tự báo cáo của người trong nhóm (38–71 phút, TB 55 phút); được tách riêng khỏi mẫu khảo sát người ngoài nhóm. |

### Quy tắc đối chiếu và bảo quản nguồn

CSV hiện có 10 phiếu, trong đó 9 hợp lệ; P03 bị loại do Q1 = 0 lần. Khi cập nhật số liệu phải tính lại từ các dòng phản hồi, không khôi phục bộ tỷ lệ cũ 8/7 hoặc tự bổ sung câu trả lời còn thiếu.

- Ngày, kênh và nguồn ghi chép lấy từ collected_at/channel/source_ref; giao diện ngoại tuyến là công cụ nhập dữ liệu, không thay thế kênh trao đổi với người trả lời.
- Chỉ công bố mã và vai trò, không đưa thông tin nhận dạng vào repo.
- Q3 cho phép nhiều lựa chọn; Q5 gộp thiếu việc và hỏi lại, không đồng nhất với tỷ lệ báo cáo sai.
- Giữ tín hiệu phản bác P05; P02/P07 dùng task board nhưng vẫn nêu khó khăn. Không diễn giải hai phiếu này là đã thấy cách hiện tại đủ dùng.
- Khi có sửa hoặc bổ sung phản hồi, giữ nguồn ghi chép và tính lại summary, báo cáo nhóm và phần cá nhân có dẫn số liệu. Không tạo lại câu trả lời từ tỷ lệ đã có.
