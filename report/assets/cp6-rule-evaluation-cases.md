# CP6 — 10 ca đánh giá thiết kế Rule

> Tất cả dữ liệu dưới đây là **ví dụ tổng hợp do Codex soạn để kiểm tra thiết kế**, không phải phản hồi khảo sát, log dự án hoặc kết quả pilot. Chưa chạy trên một triển khai Rule. Bộ ca này hỗ trợ tiêu chí C9; không nhận bonus B3 vì giải pháp được chọn không dùng AI.

## Quy ước chung

- Kỳ báo cáo minh họa: từ `2026-10-26T00:00:00+07:00` đến trước `2026-11-09T00:00:00+07:00`. Lọc theo ngày hoàn thành đã được xác nhận; đầu kỳ được tính, cuối kỳ thuộc kỳ tiếp theo.
- A/B là mã thành viên giả định; E1/E2/EM là mã nguồn giả định được phép đọc. EP là nguồn không được cho phép. Các mã này không tham chiếu dữ liệu thật.
- Mỗi việc có `task_id`, `owner`, trạng thái, xác nhận hoàn thành, ngày hoàn thành, hạng mục và bằng chứng. Cùng `task_id` chỉ xuất hiện một lần, gộp liên kết bằng chứng nếu không mâu thuẫn.
- Issue đóng hoặc PR merge không tự biến một task thành Done. Thiếu/mâu thuẫn thông tin thì đưa vào danh sách cần con người xác nhận, không đoán cho đủ.
- Đầu ra là bảng tổng hợp cùng danh sách cần kiểm tra; mọi ca đều phải có bước con người duyệt trước khi gửi. Rule không sửa dữ liệu gốc và không gửi báo cáo.

## Input và đầu ra mong đợi

| Ca | Input tổng hợp | Đầu ra mong đợi | Tiêu chí ở mục 7 |
|---|---|---|---|
| R01 — Mục hợp lệ | T01; owner A; Done được xác nhận; hoàn thành 02/11; nguồn E1 | Có đúng một T01, giữ owner A, ngày và E1; chuyển sang kiểm tra của con người | 1, 2, 3, 5 |
| R02 — PR merge nhưng chưa Done | T02; owner A; In Progress; PR đã merge; nguồn E1 | Không đưa T02 vào tập việc Done. Không tự đổi trạng thái hoặc bỏ mất ghi chú còn đang làm | 2, 5 |
| R03 — Done chưa xác nhận | T03; owner B; ghi Done nhưng chưa được người phụ trách xác nhận; nguồn E1 | Đưa T03 vào danh sách chờ xác nhận, không khẳng định đã hoàn thành trong báo cáo | 1, 2, 5 |
| R04 — Ranh giới thời gian | T04 hoàn thành đúng đầu kỳ; T05 hoàn thành đúng cuối kỳ; T06 hoàn thành trước đầu kỳ; cả ba đều được xác nhận | Chỉ có T04 trong kỳ này; T05 thuộc kỳ tiếp theo, T06 thuộc kỳ trước | 1, 2 |
| R05 — Trùng theo task | Hai dòng T07 đều owner A, Done xác nhận, ngày 03/11; một dòng nguồn E1, một dòng E2 | Chỉ một T07, giữ cả E1 và E2, không đếm là hai công việc | 1, 2, 3 |
| R06 — Thiếu trường bắt buộc | T08 không có owner; T09 có ngày không hợp lệ; còn lại ghi Done | Hai mục được đưa vào danh sách cần xác nhận; không tự gán người hoặc ngày | 2, 3, 5 |
| R07 — Nguồn mâu thuẫn | Hai dòng T10 cùng ngày nhưng một dòng owner A, dòng kia owner B | Ghi rõ mâu thuẫn T10 và yêu cầu xác nhận; không tự chọn dòng cuối hoặc gộp thành một kết luận chắc chắn | 2, 3, 5 |
| R08 — Nguồn ngoài quyền | T11 chỉ có nguồn EP không được phép đọc | Không truy cập EP; ghi chưa đủ nguồn hợp lệ và chuyển xử lý thủ công, không tuyên bố đã kiểm chứng | 3, 5 |
| R09 — Việc ngoài code và blocker | T12 là cập nhật tài liệu, owner B, Done xác nhận 04/11, nguồn EM; có ghi chú “chờ phản hồi giảng viên cho bước tiếp theo” | Có T12 dù không có commit/PR; giữ nguồn EM và ghi chú blocker cho bước tiếp theo, không suy toàn bộ dự án đã xong | 1, 2, 3 |
| R10 — Không lấy được nguồn | Task board/export không truy cập được, không xác định được tập việc hợp lệ trong kỳ | Báo lỗi nguồn; quay về export/đối chiếu thủ công khi có thể; không tạo báo cáo trống như thể không ai làm việc và không tự gửi | 1, 3, 5 |

## Cách chạy và ghi kết quả khi có triển khai

1. Cố định input của từng ca, chạy trên bản sao hoặc dữ liệu thử, không dùng quyền ghi lên nguồn thật.
2. So tập `task_id`, owner, kỳ, bằng chứng, danh sách chờ xác nhận và nhánh quay về với đầu ra mong đợi.
3. Ghi ca, ngày chạy, phiên bản Rule, đầu ra thực tế, từng tiêu chí đạt/không đạt và lỗi cần sửa. Hiện các ca đều ở trạng thái **chưa chạy**.
4. Tiêu chí thời gian số 4 phải đo riêng trên triển khai: hai pha Rule tổng không quá 3 phút và toàn bộ việc của người tổng hợp dưới 25 phút. Không suy thời gian từ các ví dụ tổng hợp này.
5. Tiêu chí thành công bốn kỳ liên tiếp vẫn cần time log pilot thật; 10 ca kiểm tra thiết kế không thay thế pilot.

Tham chiếu: [5 tiêu chí của nhóm](../team/group_report.md#7-problem-statement-v1--tiêu-chí-đánh-giá-cp6), [quy trình và boundary](cp5-lesongthao-workflow-draft.md), [đối chiếu metric](cp6-lesongthao-metric-boundary-review.md).

Khi có triển khai, ghi nhận bằng [kế hoạch đo pilot và biểu mẫu](cp6-pilot-measurement-plan.md); kết quả thực tế được lưu riêng với đầu ra mong đợi ở bảng trên.
