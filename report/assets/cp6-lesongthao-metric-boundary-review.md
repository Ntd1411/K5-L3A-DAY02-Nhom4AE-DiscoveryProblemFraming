# CP6 — Đối chiếu metric và boundary từ phần quy trình

- Người phụ trách phần hỗ trợ: Lê Sông Thao, theo TEAM.md; Codex hỗ trợ rà soát tài liệu ngày 09/11/2026.
- Mục đích: cung cấp các điểm cần Giang/Dũng/Phát đối chiếu khi viết PS v0/v1, mức can thiệp và quyết định. Đây là nhận xét từ quy trình, chưa thay thế bản PS hoặc quyết định do nhóm tự chốt.
- Nguồn: [Card #1 của Phát](https://github.com/Ntd1411/K5-L3A-DAY02-Nhom4AE-DiscoveryProblemFraming/blob/627065150a8fb412411752b9f4530cc04e861232/report/individual/2A202603536_TranHoangPhat.md), [TEAM.md tại mốc main đã đọc](https://github.com/Ntd1411/K5-L3A-DAY02-Nhom4AE-DiscoveryProblemFraming/blob/627065150a8fb412411752b9f4530cc04e861232/TEAM.md), [quy trình CP5](../team/group_report.md#4-quy-trình-trướcsau-cp5).

## 1. Các điểm cần giữ nhất quán

| Điểm kiểm tra | Căn cứ hiện có | Góp ý cho người chủ trì |
|---|---|---|
| Baseline thời gian | Phát tự báo cáo 38/71/55 phút; trung bình 54,67 phút | Ghi khoảng 55 phút với mẫu 3 kỳ, không mô tả mọi kỳ đều mất đúng 55 phút. Cần log gốc để xác định cách đo có tính thời gian chờ không. |
| Target No AI | Dưới 40 phút/kỳ; ước tính phương án bảng chung là 36 phút | Phân biệt target với ước tính và kết quả thực đo. Chốt target áp dụng cho từng kỳ hay trung bình 4 kỳ; vẫn báo từng kỳ để thấy dao động. |
| Target Workflow | Dưới 25 phút, nếu có lý do thử AI | Không ghi đây là target của phương án No AI. Thời gian phải tính chuẩn bị input, kiểm tra, sửa và nhánh quay về. |
| Ngưỡng xét AI | Card Phát đề xuất thử bảng chung 2 kỳ trước | Làm rõ trường hợp đúng 40 phút vì target là dưới 40; chốt tổng thời gian hay phần tổng hợp/viết còn nghẽn. Nếu chậm do bảng thiếu dữ liệu, AI soạn nháp không tự giải được nguyên nhân đó. |
| Chất lượng | Số câu giảng viên hỏi lại trong 3 kỳ trước còn thiếu | Giữ trạng thái chưa có dữ liệu, không điền 0. Xác định câu hỏi nào do thiếu/sai báo cáo, câu nào là hỏi chuyên môn mới. |
| Công sức cả nhóm | Chưa có baseline | Ghi cả cập nhật bảng của 4 người và thời gian trả lời bổ sung của các thành viên khác. Không đếm trùng thời gian Phát đã tính trong tổng hợp. |
| Thứ tự kiểm tra | Bản thiết kế đặt hỏi bổ sung trước kiểm tra cuối | Giữ quy tắc: nội dung mới phải được kiểm tra trước khi gửi. Không có nhánh hỏi xong rồi đi thẳng tới gửi. |

## 2. Góp ý về mức can thiệp

- **No AI:** bảng chung, template, trách nhiệm cập nhật và đối chiếu thủ công. Đây là phương án CP5 thử trước theo card, còn cần kiểm chứng việc người dùng có cập nhật đều không.
- **Rule:** có thể lọc đúng kỳ hoặc kiểm trường bắt buộc bằng logic cố định; chưa có bằng chứng cần xây công cụ mới trong lab.
- **Workflow:** chỉ cân nhắc khi phần tổng hợp/viết còn là điểm nghẽn sau cải tiến quy trình. AI nhận dữ liệu đã gom, soạn nháp; Phát xác nhận và kiểm tra.
- **Agent:** chưa có bằng chứng cần AI tự chọn nguồn, công cụ hoặc bước tiếp theo; Giang cần giải thích nếu đề xuất mức này.

## 3. Năm tiêu chí đề xuất cho phương án No AI

Đây là đầu vào để Giang và nhóm tự chốt tiêu chí CP6, chưa phải kết quả đánh giá đã chạy.

| # | Tiêu chí | Đạt khi | Không đạt khi |
|---:|---|---|---|
| 1 | Truy được nguồn | Mọi trạng thái và nhận định trong báo cáo có link/ghi chú nguồn được người phụ trách xác nhận | Có nhận định không có nguồn, hoặc tự suy Done từ commit |
| 2 | Đúng kỳ, đúng người | Việc được đưa vào đúng kỳ hai tuần, owner khớp nguồn | Lẫn kỳ hoặc nhầm người phụ trách |
| 3 | Đủ việc và blocker | Toàn bộ việc/blocker đã được xác nhận trong bảng nguồn đều được đối chiếu, không bỏ sót khi tổng hợp | Bỏ sót việc/blocker đã có trong nguồn xác nhận |
| 4 | Kiểm tra trước gửi | Sau lần bổ sung/sửa cuối có bước Phát kiểm tra; dữ liệu chưa xác nhận được ghi rõ hoặc xử lý bằng nhánh quay về | Nội dung mới được gửi khi chưa kiểm tra; tự điền để làm báo cáo có vẻ đầy đủ |
| 5 | Hiệu quả và chất lượng | Khi đủ kỳ đo theo kế hoạch, thời gian đạt target No AI theo cách tổng hợp nhóm đã thống nhất; câu hỏi lại do thiếu/sai không tăng so baseline đã bổ sung | Chưa đủ dữ liệu thì ghi chưa đánh giá; khi có dữ liệu, không đạt thời gian hoặc chất lượng theo ngưỡng đã chốt |

## 4. Điểm còn thiếu để giải thích quyết định

- Dũng/Giang: xác nhận phạm vi thời gian, cách tính target và thay đổi v0 → v1 dựa trên kết quả kiểm chứng.
- Phát: bổ sung dữ liệu kiểm chứng và baseline chất lượng; đánh giá đủ Value/Usability/Feasibility/Viability, phạm vi Go và ngưỡng dừng.
- Thao: đối chiếu các trường vừa chốt với sơ đồ và bảng before/after, cập nhật nếu kiểm chứng cho thấy bước hoặc thời gian khác.

TEAM.md trên main hiện ghi Go, còn mục 8 báo cáo nhóm tại commit 6270651 chưa có đánh giá rủi ro. Vì vậy tài liệu này chỉ góp ý các điểm cần hoàn thiện, không tự suy nhóm đã chốt Go cho Workflow hoặc Agent.
