# Gợi ý reflection — Lê Sông Thao, 2A202603534

> **Bản nháp do Codex soạn theo yêu cầu ngày 09/11/2026, chưa phải reflection tự viết của Thao.** Các đoạn xưng “tôi” là cách diễn đạt tham khảo từ tài liệu GitHub, không xác nhận cảm xúc, phát biểu hay trải nghiệm chưa được ghi nhận. Không có dữ liệu để dựng lại đối thoại CP3 hoặc kết quả phỏng vấn CP4.
>
> Theo [RUBRIC.md](../../RUBRIC.md), reflection do AI viết thay không đáp ứng C4. Phần trả lời chính thức vẫn cần Thao tự viết từ trải nghiệm của mình vào mục 6 [báo cáo cá nhân](../individual/2A202603534_LeSongThao.md).

## 6.1. Học được gì từ các card khác?

Từ các card của nhóm, tôi có thể so sánh cách xác định một pain đáng đào sâu. Card của Phát về báo cáo tiến độ có actor cụ thể, chu kỳ hai tuần và ba mốc thời gian 38, 71, 55 phút. Card của tôi về báo cáo thực nghiệm có quy trình rõ nhưng baseline khoảng 80 phút vẫn là ước lượng hồi tưởng. Điểm cần học là phân biệt vấn đề quen thuộc với vấn đề đã có bằng chứng đủ rõ để nhóm cùng kiểm chứng.

## 6.2. Dấu hiệu nghĩ giải pháp quá sớm

Trong bản card cá nhân, tôi từng nghiêng về Workflow để soạn nháp nhận định. Tuy nhiên, thao tác lấy chỉ số và xuất bảng có thể giải bằng script, còn phần viết có thể thử một template trước. Với card của Phát, cần giải quyết thông tin phân tán và cách cập nhật việc chung trước khi thêm AI. Dấu hiệu cần tự kiểm tra là chọn công nghệ khi chưa biết phương án đơn giản hơn còn thiếu ở bước nào.

## 6.3. Một thay đổi có trong tài liệu

Bảng phản biện CP2 của tôi đã ghi việc tách “gom số liệu” khỏi “viết nhận định”. Bước copy bảng khoảng 15 phút thuộc thao tác có thể tự động hóa bằng Rule, trong khi bước viết nhận định khoảng 25 phút cần người phân tích và đối chiếu mẫu sai. Card ESP32 cũng được sửa theo hướng checklist và chuẩn hóa log trước. Ví dụ này có trong tài liệu CP2; nó không thay thế bằng chứng một lần nhận phản biện trực tiếp từ thành viên khác ở CP3.

## 6.4. Điều rút ra từ bằng chứng hiện có

Tại lần rà soát, báo cáo nhóm trên main chưa có snapshot hoặc kết quả survey, nên tôi chưa có cơ sở kể một điều bất ngờ từ phỏng vấn. Điều đáng chú ý trong card Phát là khoảng dao động 38–71 phút khá lớn, và baseline số câu giảng viên hỏi lại vẫn để trống. Các điểm này cho thấy cần tìm hiểu vì sao các kỳ khác nhau và bổ sung chỉ số chất lượng trước khi kết luận giải pháp tốt hơn.

## 6.5. Khó khăn khi làm rõ Problem Statement

Khó khăn tôi cần xử lý trong phần quy trình là giữ cùng phạm vi đo giữa hiện tại và tương lai. Mục tiêu dưới 40 phút áp dụng cho thử nghiệm bảng chung không dùng AI; dưới 25 phút thuộc giả thuyết Workflow nếu có căn cứ cần thêm AI. Tổng thời gian phải tính cả kiểm tra và sửa nội dung. Số commit không đủ để kết luận một nhiệm vụ đã hoàn thành, nên trạng thái công việc vẫn cần người phụ trách xác nhận.

## 6.6. Nếu làm lại

Tôi sẽ ghi thời gian từng bước ngay khi làm thay vì chỉ nhớ tổng thời gian sau đó. Trong thảo luận, tôi cần ghi nguyên câu hỏi, người hỏi và phần card được sửa để nhật ký CP3 có bằng chứng rõ. Với nhiệm vụ CP5 được giao, tôi sẽ đối chiếu cùng Phát về input, output và thời gian, rồi trao đổi với Giang để sơ đồ, metric và mức can thiệp dùng cùng giả định. Điều tôi cần phản biện kỹ hơn là phần thời gian tiết kiệm có thực sự giảm tổng công việc của cả nhóm hay chỉ chuyển việc sang thành viên khác.

## 6.7. Khung giải thích hiểu bài — bản nháp 7 câu

Bài của nhóm xuất phát từ việc Phát cần gom công việc hai tuần của nhóm bốn người để viết báo cáo cho giảng viên. Quy trình hiện tại có bảy bước, khoảng 55 phút, trong đó đọc lại Zalo khoảng 15 phút là điểm nghẽn được nêu trong card. Baseline tự báo cáo gồm 38, 71 và 55 phút; mục tiêu thử bảng chung không dùng AI là dưới 40 phút, còn mục tiêu dưới 25 phút chỉ áp dụng nếu thử Workflow sau đó. Cách đo cần tính cả thời gian kiểm tra và theo dõi chất lượng, trong khi số câu giảng viên hỏi lại hiện còn thiếu baseline. Nếu dùng AI, ranh giới cần bảo đảm mọi nhận định có nguồn, không tự coi commit là hoàn thành công việc và con người kiểm tra trước khi gửi. Nhóm cần so sánh No AI, Rule, Workflow và Agent rồi chọn mức đơn giản nhất đủ dùng; card Phát hiện ưu tiên No AI trước. TEAM.md ghi Go, nhưng cần hoàn thiện đánh giá bốn rủi ro, phạm vi pilot và ngưỡng dừng trong báo cáo nhóm để giải thích được quyết định đó.

## Nguồn để tự đối chiếu

- [Báo cáo cá nhân Thao](../individual/2A202603534_LeSongThao.md), mục 3 và bảng phản biện CP2.
- [Card của Phát tại mốc main được đọc](https://github.com/Ntd1411/K5-L3A-DAY02-Nhom4AE-DiscoveryProblemFraming/blob/627065150a8fb412411752b9f4530cc04e861232/report/individual/2A202603536_TranHoangPhat.md).
- [Phân công tại TEAM.md](https://github.com/Ntd1411/K5-L3A-DAY02-Nhom4AE-DiscoveryProblemFraming/blob/627065150a8fb412411752b9f4530cc04e861232/TEAM.md).
- [Báo cáo nhóm tại mốc main được đọc](https://github.com/Ntd1411/K5-L3A-DAY02-Nhom4AE-DiscoveryProblemFraming/blob/627065150a8fb412411752b9f4530cc04e861232/report/team/group_report.md): còn là mẫu chưa điền khi rà soát.
