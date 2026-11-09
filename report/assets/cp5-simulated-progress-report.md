# CP5 — Tình huống mô phỏng từ dữ liệu đến báo cáo

> **Toàn bộ dự án, task, trao đổi xác nhận, bằng chứng và thời gian trong tài liệu này do Codex dựng để minh họa.** Đây là một ví dụ thiết kế cho card Phát, không phải hoạt động, khảo sát hoặc pilot đã xảy ra. Hai CSV đi kèm có trường `data_origin=synthetic` trên mọi dòng. Ví dụ không bổ sung bằng chứng phỏng vấn CP4 hay reflection tự viết C4.

## 1. Bối cảnh

Một nhóm bốn sinh viên đang làm đồ án giả định **hệ thống quản lý đăng ký đề tài**. Người tổng hợp phải gửi báo cáo hai tuần cho giảng viên, nhưng tiến độ nằm ở task board, PR và tài liệu họp. M1 giữ vai trò người tổng hợp tương ứng với actor Phát; M2 phụ trách dữ liệu/backend, M3 giao diện và M4 kiểm thử/tài liệu. Các mã thành viên là nhân vật minh họa, không ghi nhận hành vi của người thật trong nhóm.

Kỳ báo cáo minh họa là từ **00:00 ngày 26/10/2026 đến trước 00:00 ngày 09/11/2026, GMT+7**. Chỉ việc Done được chủ việc xác nhận, có bằng chứng và hoàn thành trong khoảng này mới được đưa vào danh sách đã hoàn thành.

## 2. Dữ liệu đầu vào và vấn đề cần xử lý

- [CSV đầu vào](cp5-simulation-input.csv): **13 dòng**, **11 task khác nhau**.
- [CSV sau đối chiếu trong kịch bản](cp5-simulation-confirmed.csv): **11 dòng**, giữ cả việc chưa xong và việc ngoài kỳ để truy vết.
- Các mã `SIM-E01` đến `SIM-E13` là bằng chứng giả định, không phải link tới commit, PR hay biên bản thật.

| Task / vấn đề | Xử lý trong kịch bản | Kết quả trước khi soạn báo cáo |
|---|---|---|
| T03 có hai dòng, một task board và một PR | Rule phát hiện cùng task_id, owner và ngày; gộp nguồn | Một công việc, giữ cả SIM-E03 và SIM-E04 |
| T05 ghi Done nhưng chưa xác nhận | Người tổng hợp hỏi M4; trong kịch bản vẫn còn một ca kiểm thử chưa đạt | Đổi về In Progress trong dữ liệu minh họa; không đưa vào danh sách hoàn thành |
| T06 có PR merge nhưng môi trường chưa hoạt động | Giữ nguyên In Progress | Không tự suy Done từ PR; đưa vào phần còn vướng và kế hoạch |
| T07 hoàn thành đúng 00:00 ngày 09/11 | Rule lọc theo khoảng nửa mở đầu kỳ có tính, cuối kỳ không tính | Thuộc kỳ tiếp theo |
| T08 hoàn thành trước 26/10 | Rule loại khỏi kỳ này nhưng giữ dấu vết | Không đếm lại việc của kỳ trước |
| T09 mâu thuẫn owner M3/M2 | Chuyển cho con người xác nhận; kịch bản chốt M3 là người chịu trách nhiệm, M2 hỗ trợ | Một task của M3, giữ cả hai nguồn để truy vết |
| T11 thiếu link bằng chứng | Chờ người liên quan bổ sung; kịch bản cung cấp SIM-E13 | Chỉ sau đối chiếu mới đủ điều kiện đưa vào báo cáo |

Ngay sau kiểm tra đầu vào: **5 task đủ điều kiện**, **3 task cần xác nhận** (T05, T09, T11), **3 task không thuộc tập Done trong kỳ** (T06, T07, T08). Số dòng trùng không được cộng thành số việc.

Sau bước đối chiếu giả định: **7 task hoàn thành hợp lệ** là T01, T02, T03, T04, T09, T10, T11; **4 task còn lại** là T05/T06 đang làm và T07/T08 ngoài kỳ.

## 3. Báo cáo mẫu sau khi con người kiểm tra

**Tên:** Báo cáo tiến độ đồ án — kỳ 26/10–08/11/2026, ví dụ mô phỏng.

**Kết quả đã hoàn thành: 7 công việc, bao phủ cả 4 thành viên.**

| Người phụ trách giả định | Công việc hoàn thành | Bằng chứng giả định |
|---|---|---|
| M1 | T01 — Chốt phạm vi MVP | SIM-E01 |
| M2 | T02 — Thiết kế cấu trúc dữ liệu; T11 — Bàn giao bản demo | SIM-E02; SIM-E13 |
| M3 | T03 — Giao diện danh sách; T09 — Kiểm tra dữ liệu form | SIM-E03/SIM-E04; SIM-E10/SIM-E11 |
| M4 | T04 — Hướng dẫn cài môi trường; T10 — Sơ đồ màn hình và hướng dẫn demo | SIM-E05; SIM-E12 |

**Nhận định minh họa:** nhóm đã có bản demo và các phần dữ liệu, giao diện, tài liệu cần thiết cho lần trình bày. Chưa có cơ sở kết luận hệ thống sẵn sàng triển khai, vì kiểm thử đăng ký trùng còn một ca chưa đạt và môi trường thử chưa hoạt động ổn định.

**Việc còn vướng:** T05 do M4 xử lý và T06 do M1 theo dõi. Hai việc này không được trình bày như đã hoàn thành dù có dấu hiệu tiến triển hoặc PR đã merge.

**Kế hoạch kỳ tới:** ưu tiên xử lý ca kiểm thử còn lỗi và kiểm tra môi trường thử, sau đó đánh giá lại trạng thái. T07 được ghi nhận ở kỳ tới theo ngày hoàn thành. Người tổng hợp chỉ nêu thứ tự ưu tiên; không tự đặt deadline hoặc cam kết thay thành viên.

**Kiểm tra trước gửi:** các mục đều đúng kỳ, có owner, trạng thái được xác nhận và nguồn trong kịch bản; T03/T09 chỉ đếm một lần; việc còn vướng được giữ riêng. M1 xem bản cuối và tự gửi. Tài liệu này không thực hiện thao tác gửi.

## 4. Thời gian minh họa và phần việc chuyển sang thành viên

| Bước | Phân bổ giả định |
|---|---:|
| Rule lấy/lọc dữ liệu | 2 phút |
| Bổ sung việc ngoài GitHub, loại trùng và hỏi xác nhận | 5 phút |
| Rule gom dữ liệu | 1 phút |
| Người tổng hợp viết nhận định và kế hoạch | 8 phút |
| Người tổng hợp kiểm tra cuối | 3 phút |
| Người tổng hợp duyệt và gửi | 2 phút |
| **Tổng thời gian người tổng hợp** | **21 phút** |

Các mốc trên là phân bổ giả định giống thiết kế CP5, không phải time log đã đo. Nếu thực tế cần hỏi/sửa lâu hơn thì phải ghi đúng thời gian, không ép về 21 phút.

Ví dụ công sức riêng: cập nhật task của M1/M2/M3/M4 lần lượt 6/8/7/9 phút, tổng 30 phút; ba thành viên ngoài người tổng hợp trả lời thêm tổng 3 phút, được ghi riêng và không nằm trong 30 phút cập nhật. Tổng công sức minh họa là **21 + 30 + 3 = 54 phút**. Chưa có baseline công sức cả nhóm nên không thể lấy 54 so với 55 phút của riêng người tổng hợp để kết luận hiệu quả toàn nhóm.

## 5. Sử dụng ví dụ để đánh giá thiết kế

- **Đầy đủ:** tập Done sau đối chiếu có đúng 7 task nêu trên; không bỏ việc ngoài code.
- **Chính xác:** loại đúng việc ngoài kỳ, giữ task chưa xong, giải quyết mâu thuẫn owner trước khi tổng hợp.
- **Truy vết:** mỗi mục dùng mã bằng chứng trong kịch bản; khi triển khai phải thay bằng liên kết thật.
- **An toàn:** Rule chỉ lọc/gom; người tổng hợp hỏi, viết, kiểm tra và gửi. Ví dụ không cần đọc chat riêng tư hoặc ghi lên dịch vụ thật.
- **Thời gian:** 21 phút là giả định để đọc thiết kế, chưa phải bằng chứng đạt target dưới 25 hoặc đủ bốn kỳ liên tiếp.

Đối chiếu [quy trình CP5](cp5-lesongthao-workflow-draft.md), [10 ca đánh giá Rule](cp6-rule-evaluation-cases.md) và [metric/boundary](cp6-lesongthao-metric-boundary-review.md).
