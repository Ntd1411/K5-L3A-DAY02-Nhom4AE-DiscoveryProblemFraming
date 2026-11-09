# Báo cáo nhóm — Day 02 Discovery & Problem Framing

> Bản chung của nhóm, viết trên repo do nhóm trưởng fork. Không copy file này sang repo cá nhân.
> Template chi tiết và prompt mẫu: [docs/01-worksheet.md](../../docs/01-worksheet.md). Bài mẫu: [docs/02-deliverable-example.md](../../docs/02-deliverable-example.md).

## 1. Thông tin nhóm

- Tên nhóm: Nhom4AE
- Thành viên: xem `TEAM.md`
- Candidate problem được chọn (1 câu): Khi tới hạn gửi báo cáo tiến độ cho giảng viên, người phụ trách muốn gom việc cả nhóm đã làm trong hai tuần qua vào một chỗ để gửi đúng hạn mà không phải lục lại commit và tin nhắn.
- Quyết định cuối: Go / Not Yet / No-Go

---

## 2. Hội tụ nhóm (CP3)

### 2.1. Pitch

| # | Người đưa ra | Candidate (Job Story ngắn) | Actor | Bottleneck | Câu hỏi phản biện nhận được (ai hỏi) |
|---:|---|---|---|---|---|
| 1 | Nguyễn Tuấn Dũng | Điều chỉnh CV theo JD | Sinh viên CNTT năm cuối đang ứng tuyển | Đối chiếu JD và viết lại CV, khoảng 15 phút | **Trần Hoàng Phát:** Trong lần ứng tuyển gần nhất, 15 phút viết lại CV có tạo thay đổi đo được về phản hồi, hay một CV gốc theo nhóm vị trí đã đủ? |
| 2 | Nguyễn Tuấn Dũng | Chuẩn bị phỏng vấn kỹ thuật | Sinh viên chuẩn bị phỏng vấn thực tập/fresher | Xác định phạm vi, tìm tài liệu và ôn tập; ít nhất 3 ngày | **Nguyễn Huy Giang:** “Ba ngày” là thời gian lịch hay số giờ thực học; bước nào thực sự chiếm nhiều giờ nhất? |
| 3 | Nguyễn Tuấn Dũng | Nhập lại thông tin vào biểu mẫu | Sinh viên năm cuối làm thủ tục và ứng tuyển | Tìm và nhập lại thông tin ở nhiều định dạng, khoảng 30 phút | **Lê Sông Thao:** Lần gần nhất bạn điền form nào, bao nhiêu trường bị lặp và từng có lỗi không nhất quán gây hậu quả gì? |
| 4 | Trần Hoàng Phát | Gom việc hai tuần để viết báo cáo tiến độ | Người phụ trách báo cáo của nhóm bốn người | Đọc lại Zalo để tìm việc đã làm, khoảng 15 phút; toàn quy trình trung bình 55 phút | **Nguyễn Tuấn Dũng:** Nếu cả nhóm cập nhật một bảng chung ngay khi xong việc, thời gian 55 phút có giảm đủ để không cần AI không? |
| 5 | Trần Hoàng Phát | Tìm yêu cầu cuối cùng của giảng viên | Thành viên nhóm đồ án | Xác định yêu cầu còn hiệu lực; từng mất một ngày sửa do làm sai | **Nguyễn Huy Giang:** Vì sao nhóm chưa thống nhất một nguồn chính thức; nếu làm được thì pain còn lại là gì? |
| 6 | Trần Hoàng Phát | Thành viên không chạy được repository | Thành viên nhóm phát triển phần mềm | Tìm khác biệt môi trường, khoảng 45 phút | **Lê Sông Thao:** Sau khi có lockfile, hướng dẫn và môi trường container thống nhất, sự cố còn xảy ra bao nhiêu lần? |
| 7 | Nguyễn Huy Giang | Trích xuất action item sau họp | Nhóm trưởng và thành viên nhóm sinh viên | Tua file ghi âm để tìm nội dung giao việc, khoảng 20 phút | **Trần Hoàng Phát:** Nếu có thư ký ghi trực tiếp và dành năm phút cuối xác nhận task, 45 phút nghe lại có còn phát sinh không? |
| 8 | Nguyễn Huy Giang | Tra cứu công thức trong nhiều PDF | Sinh viên tự ôn thi cuối kỳ | Đọc và đối chiếu ngữ cảnh trong nhiều PDF, khoảng 20–30 phút/dạng bài | **Nguyễn Tuấn Dũng:** Người học cần tìm đúng đoạn tài liệu hay cần câu trả lời tổng hợp; kiểu sai nào gây hại hơn khi ôn thi? |
| 9 | Nguyễn Huy Giang | Kiểm tra tên file và bài nộp thiếu | Nhóm trưởng/lớp trưởng phụ trách thu bài | Đối chiếu từng tên file với danh sách, khoảng 20–25 phút | **Lê Sông Thao:** Vì tên file có cú pháp cố định, RegEx hoặc validation lúc nộp giải quyết được bao nhiêu phần trăm trường hợp? |
| 10 | Lê Sông Thao | Tổng hợp kết quả thực nghiệm và viết nhận định | Sinh viên thực hiện thực nghiệm ML/CV/NLP | Viết nhận định và phân tích lỗi, khoảng 25 phút; toàn quy trình khoảng 80 phút | **Nguyễn Huy Giang:** Nếu script đã xuất metrics và mẫu sai, phần nhận định còn mất bao lâu và có nhất thiết cần AI không? |
| 11 | Lê Sông Thao | Đối chiếu ảnh và lỗi OCR | Người phát triển pipeline nhận diện biển số | Mở biến thể ảnh và đối chiếu OCR thủ công, khoảng 30 phút | **Trần Hoàng Phát:** Visual error sheet và thống kê cặp ký tự nhầm có đủ giảm thời gian từ 55 xuống 15 phút không? |
| 12 | Lê Sông Thao | Đối chiếu log khi debug ESP32 | Sinh viên/kỹ sư nhúng và IoT | Đọc log và dò GPIO giữa code với sơ đồ, khoảng 7 phút/vòng | **Nguyễn Tuấn Dũng:** Nếu chuẩn hóa log và dùng checklist, vấn đề nào còn lại buộc phải dùng mức cao hơn Rule? |

### 2.2. Cluster

| Cluster | Các candidate | Pattern chung |
|---|---|---|
| A — Tìm việc và thủ tục cá nhân | 1. Điều chỉnh CV; 2. Chuẩn bị phỏng vấn; 3. Nhập biểu mẫu | Phải đọc, đối chiếu và nhập lại thông tin cá nhân theo từng ngữ cảnh mới. |
| B — Điều phối và truy xuất thông tin nhóm | 4. Báo cáo tiến độ; 5. Yêu cầu cuối của giảng viên; 7. Action item sau họp | Thông tin công việc và quyết định nằm rải rác, khiến nhóm phải tìm lại, xác nhận và tổng hợp thủ công. |
| C — Kiểm tra và tổng hợp đầu ra kỹ thuật/học tập | 6. Môi trường repository; 8. Tra cứu PDF; 9. Kiểm tra bài nộp; 10. Báo cáo thực nghiệm; 11. Lỗi OCR; 12. Debug ESP32 | Phải đối chiếu nhiều nguồn hoặc nhiều đầu ra kỹ thuật để tìm sai lệch và tạo kết quả đúng. |

### 2.3. Opportunity Solution Tree rút gọn

```text
OUTCOME: Giảm thời gian và số lần bỏ sót khi sinh viên tổng hợp thông tin
         cho các công việc lặp lại trong học tập, đồ án và tìm việc
├── Opportunity A: Thông tin cá nhân và yêu cầu tuyển dụng thay đổi theo từng ngữ cảnh
├── Opportunity B: Công việc, quyết định và yêu cầu của nhóm nằm rải rác ở nhiều kênh
└── Opportunity C: Kết quả kỹ thuật nằm ở nhiều file/đầu ra và phải đối chiếu thủ công
```

Những ý đã gạch bỏ vì là solution đội lốt opportunity:

- Chatbot tổng hợp báo cáo.
- Agent tự đọc GitHub và Zalo.
- Dashboard theo dõi tiến độ.
- RAG tra cứu tài liệu.
- Script tự động kiểm tra tên file.

### 2.4. Chấm điểm shortlist (1–5)

Shortlist ba candidate được nhóm chấm điểm:

1. Gom việc hai tuần để viết báo cáo tiến độ.
2. Trích xuất action item sau họp nhóm.
3. Tổng hợp kết quả thực nghiệm và viết nhận định phân tích lỗi.

| Candidate | Actor rõ | Quy trình rõ | Pain có bằng chứng | Impact đo được | Vừa sức lab | So sánh được No AI/Rule/Workflow/Agent | Nhóm hiểu domain | Tổng |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| Báo cáo tiến độ hai tuần | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 35 |
| Action item sau họp | 5 | 5 | 4 | 5 | 4 | 5 | 5 | 33 |
| Báo cáo kết quả thực nghiệm | 4 | 5 | 4 | 5 | 4 | 5 | 4 | 31 |

**Candidate được chọn:**

Khi tới hạn gửi báo cáo tiến độ cho giảng viên, người phụ trách muốn gom việc cả nhóm đã làm trong hai tuần qua vào một chỗ để gửi đúng hạn mà không phải lục lại commit và tin nhắn.

**Vì sao chọn:**

- Actor và chu kỳ sử dụng rõ: một người phụ trách báo cáo cho nhóm bốn người, lặp lại mỗi hai tuần.
- Có baseline từ ba lần bấm giờ: 38, 71 và 55 phút, trung bình khoảng 55 phút.
- Bottleneck cụ thể: phải đọc lại Zalo và đối chiếu commit, ghi chú họp để xác định ai đã làm gì.
- Cả nhóm hiểu domain và có thể kiểm chứng với những nhóm sinh viên khác ngay trong lớp.
- Có thể so sánh công bằng giữa bảng chung/checklist, Rule lấy dữ liệu có cấu trúc và Workflow hỗ trợ soạn nháp.
- Có pilot nhỏ, metric thời gian và tiêu chí không bỏ sót công việc tương đối dễ đo.

**Vì sao loại các candidate còn lại:**

Action item sau họp: pain có thật và lặp lại, nhưng giải pháp No AI là chỉ định thư ký ghi trực tiếp cùng năm phút xác nhận cuối buổi có thể loại bỏ phần lớn 45 phút nghe lại. Chất lượng file ghi âm, quyền riêng tư và phát biểu chưa được chốt cũng làm tăng rủi ro nếu tự động trích task.

Báo cáo kết quả thực nghiệm: quy trình và baseline rõ, nhưng pain hiện có bằng chứng tập trung ở một thành viên và một số bài toán ML/CV cụ thể. Nhóm khó tìm mẫu kiểm chứng rộng bằng candidate báo cáo tiến độ; script xuất metrics cùng template nhận định cũng có thể giải phần lớn bottleneck trước khi cần AI.

**Xử lý bất đồng (nếu có):**

Nhóm không dùng tổng điểm như quyết định tự động. Nhóm đối chiếu bằng chứng và thống nhất chọn candidate có actor dễ tiếp cận, baseline rõ và khả năng kiểm chứng trong thời gian lab.

---

## 3. Kiểm chứng + research giải pháp đã có (CP4)

Nhóm chọn khảo sát nhanh với sinh viên các nhóm khác để kiểm tra mức độ phổ biến của vấn đề và đối chiếu với số liệu thời gian từ ba kỳ báo cáo của nhóm. Phần nghiên cứu giải pháp hiện có được dùng để xác định những bước đã có công cụ hỗ trợ và khoảng trống còn lại.

### 3.1. Assumption Map

| # | Giả định | Loại (Value / Usability / Feasibility / Viability) | Quan trọng (1–5) | Đã có bằng chứng (1–5) | Kiểm chứng trước? |
|---:|---|---|---:|---:|---|
| 1 | Người phụ trách báo cáo của các nhóm sinh viên khác cũng mất ít nhất 30 phút cho mỗi kỳ tổng hợp tiến độ. | Value | 5 | 1 | Có |
| 2 | Việc phải tìm dữ liệu rải rác giữa GitHub, tin nhắn và ghi chú họp là nguyên nhân chính gây chậm hoặc bỏ sót công việc. | Value | 5 | 3 | Có |
| 3 | Thành viên sẵn sàng cập nhật ngắn gọn công việc đã hoàn thành vào một nơi chung trong suốt hai tuần. | Usability | 5 | 1 | Có |
| 4 | Commit, issue và pull request chứa đủ dữ liệu để làm bằng chứng tiến độ, nhưng vẫn cần con người bổ sung phần việc không thể hiện trên GitHub. | Feasibility | 4 | 2 | Có |
| 5 | Nhóm có thể dùng một biểu mẫu/bảng chung mà không cần quyền truy cập tự động vào lịch sử Zalo hoặc dữ liệu riêng tư. | Feasibility | 5 | 2 | Có |
| 6 | Giảng viên chấp nhận báo cáo được tạo từ dữ liệu có cấu trúc hoặc bản nháp hỗ trợ, miễn người phụ trách kiểm tra trước khi gửi. | Viability | 4 | 1 | Có |

Giả định nhóm ưu tiên kiểm chứng: (1) việc tổng hợp báo cáo có đủ tốn thời gian để đáng giải quyết; (2) dữ liệu phân tán có phải nguyên nhân chính; và (3) việc ghi nhận tiến độ có cấu trúc có thể giảm nhu cầu tìm lại thông tin hay không.

### 3.2. Kiểm chứng bằng khảo sát nhanh

**Đối tượng:** 5–10 sinh viên thuộc các nhóm khác, ưu tiên người từng trực tiếp viết hoặc gom báo cáo tiến độ trong ba tháng gần nhất. Không thu họ tên, email hoặc thông tin nhận dạng.

**Kênh thực hiện:** khảo sát trực tiếp tại lớp hoặc Google Forms. Bộ câu hỏi đầy đủ đặt tại [`report/assets/cp4-micro-survey.md`](../assets/cp4-micro-survey.md).

**Trạng thái:** bộ câu hỏi và quy tắc phân tích đã hoàn tất; kết quả được cập nhật từ dữ liệu xuất ra sau khi kết thúc khảo sát.

| # | Câu hỏi | Dạng trả lời | Mục đích |
|---:|---|---|---|
| 1 | Trong ba tháng gần nhất, bạn đã trực tiếp viết hoặc gom báo cáo tiến độ cho nhóm bao nhiêu lần? | 0 / 1–2 / 3–5 / trên 5 lần | Lọc người có trải nghiệm thật và đo tần suất |
| 2 | Ở lần gần nhất, bạn mất bao lâu để hoàn thành báo cáo? | dưới 15 / 15–30 / 31–60 / trên 60 phút | Đo baseline ngoài nhóm |
| 3 | Bạn phải mở những nguồn nào để biết nhóm đã làm gì? | Chọn nhiều: GitHub, chat, ghi chú họp, task board, tài liệu khác | Kiểm tra dữ liệu có phân tán hay không |
| 4 | Bước nào mất thời gian nhất ở lần gần nhất? | Tìm dữ liệu / hỏi thành viên / kiểm tra độ chính xác / viết nhận định-kế hoạch / định dạng | Xác định bottleneck |
| 5 | Trong ba kỳ báo cáo gần nhất, đã có lần nào thiếu việc hoặc phải hỏi lại thành viên không? | Không / 1 lần / 2 lần / 3 lần | Đo impact bằng hành vi đã xảy ra |
| 6 | Nhóm bạn hiện lưu tiến độ theo cách nào? | Câu trả lời ngắn | Tìm workaround và giải pháp đang dùng |
| 7 | Điều gì khiến cách hiện tại chưa giải quyết được hoàn toàn vấn đề? | Câu trả lời ngắn | Thu tín hiệu phản bác và khoảng trống |

**Quy tắc phân tích:** chỉ tính câu 2–7 của người chọn từ một lần trở lên ở câu 1. Vấn đề được xem là có tín hiệu xác nhận khi ít nhất một nửa số người hợp lệ mất trên 30 phút hoặc từng thiếu việc/phải hỏi lại. Tín hiệu phản bác được ghi nhận khi người trả lời hoàn thành dưới 15 phút, chỉ dùng một nguồn hoặc cho biết bảng quản lý công việc hiện tại đã đủ.

#### Baseline nội bộ để đối chiếu

| Kỳ báo cáo | Thời gian | Nguồn phải kiểm tra |
|---:|---:|---|
| 1 | 38 phút | GitHub, Zalo, ghi chú họp, Google Docs |
| 2 | 71 phút | GitHub, Zalo, ghi chú họp, Google Docs |
| 3 | 55 phút | GitHub, Zalo, ghi chú họp, Google Docs |

Baseline nội bộ trung bình khoảng **55 phút/kỳ**, lặp lại mỗi hai tuần.

#### Bảng tổng hợp khảo sát

| Chỉ số | Kết quả sau khi kết thúc khảo sát |
|---|---|
| Tổng số phản hồi | 8 |
| Số phản hồi hợp lệ | 7 |
| Tỷ lệ mất trên 30 phút | 57,1% (4/7) |
| Ba nguồn được mở nhiều nhất | Chat 100%; GitHub 85,7%; tài liệu chung 71,4% |
| Bước tốn thời gian nhất | Tìm dữ liệu từ nhiều nguồn, 42,9% (3/7) |
| Tỷ lệ từng thiếu việc hoặc phải hỏi lại | 71,4% (5/7) |
| Cách xử lý phổ biến | Xem lại chat và tự tổng hợp vào Google Docs |
| Tín hiệu phản bác | 2/7 người dùng task board đều cho biết quy trình hiện tại đã đủ dùng; 1/7 người hoàn thành dưới 15 phút |

| Nguồn | Số người / số mẫu | Tín hiệu xác nhận | Tín hiệu phản bác |
|---|---:|---|---|
| Khảo sát nhanh sinh viên nhóm khác | 8 phản hồi, trong đó 7 hợp lệ | 4/7 người mất trên 30 phút; 5/7 người từng thiếu việc hoặc phải hỏi lại; các nguồn được mở nhiều nhất là chat, GitHub và tài liệu chung | 2/7 người dùng task board đều cho biết cách hiện tại đã đủ; 1/7 người hoàn thành dưới 15 phút |
| Time log nội bộ | 3 kỳ báo cáo của 1 người phụ trách | Cả ba kỳ đều phải kiểm tra GitHub, Zalo, ghi chú họp và Google Docs; thời gian dao động 38–71 phút, trung bình khoảng 55 phút | Tần suất chỉ hai tuần/lần; kỳ nhanh nhất mất 38 phút nên giải pháp phức tạp có thể không tương xứng |
| Câu trả lời mở về cách xử lý hiện tại | 7 phản hồi hợp lệ | 3/7 người vẫn xem lại chat và tự tổng hợp; 3/7 cho biết thành viên không cập nhật đều; 3/7 gặp vấn đề vì thông tin nằm ở nhiều kênh | 2/7 người đã dùng task board hoặc bảng chung và đánh giá quy trình hiện tại tương đối hiệu quả |

**Nguyên tắc điều chỉnh bài toán sau kiểm chứng:** nếu khảo sát xác nhận vấn đề, actor được chốt là **người phụ trách báo cáo tiến độ định kỳ cho nhóm sinh viên có công việc nằm ở GitHub, tin nhắn và ghi chú họp**. Nếu đa số đã dùng bảng quản lý công việc và hoàn thành dưới 15 phút, nhóm chuyển trọng tâm từ thu thập dữ liệu sang bước viết nhận định/kế hoạch hoặc chọn No AI. Nếu vấn đề chủ yếu đến từ việc thành viên không cập nhật, giải pháp đầu tiên là biểu mẫu và quy ước cập nhật thay vì tự động đọc lịch sử trò chuyện.

### 3.3. Research giải pháp đã có

| Công cụ / case / pattern | Link | Giải bước nào trong quy trình? | Điểm mạnh | Khoảng trống / rủi ro | Bài học cho nhóm |
|---|---|---|---|---|---|
| GitHub Issues + Projects | [GitHub Docs — About issues](https://docs.github.com/en/issues/tracking-your-work-with-issues/learning-about-issues/about-issues), [Planning and tracking with Projects](https://docs.github.com/en/issues/planning-and-tracking-with-projects) | Ghi và theo dõi task, issue, pull request; cung cấp bảng/board/roadmap, custom field và filter để xem tiến độ | Tích hợp trực tiếp với repository; dữ liệu công việc có cấu trúc và truy vết được | Không tự biết nội dung thảo luận trên Zalo, họp hoặc phần việc không tạo issue/PR; commit không đồng nghĩa với outcome | Chuẩn hóa nơi ghi task trước sẽ giải phần lớn bước “lục lại”; không nên bắt AI suy diễn toàn bộ tiến độ chỉ từ commit |
| Microsoft Teams Updates | [Microsoft Support — Get started in Updates](https://support.microsoft.com/en-us/teams/updates-app/get-started-in-updates), [Managing the Updates app](https://support.microsoft.com/en-us/teams/updates-app/managing-the-updates-app) | Yêu cầu cập nhật định kỳ theo template, đặt người nộp/người xem và deadline; theo dõi tình trạng nộp, xem lịch sử và export | Giải đúng pattern thu cập nhật có cấu trúc; có recurrence, trường bắt buộc và export | Yêu cầu nhóm dùng Teams/Microsoft 365; không tự gom lịch sử Zalo; thêm một nơi cần duy trì | Pattern quan trọng là “push request + template + nhắc thiếu”, không nhất thiết phải tự xây công cụ hoặc dùng AI |
| Geekbot asynchronous standups | [Geekbot — Async Standup Meetings](https://geekbot.com/standups/) | Hỏi thành viên theo lịch trong Slack/Teams, tổng hợp câu trả lời thành report và nhắc người chưa phản hồi | Giảm việc người phụ trách phải hỏi từng người; có lịch sử báo cáo và reminder | Không hỗ trợ Zalo; phụ thuộc thành viên trả lời trung thực, đều đặn; dữ liệu và chi phí cần xem xét | Giá trị chính đến từ thói quen cập nhật định kỳ; AI soạn narrative chỉ nên là bước sau khi dữ liệu đầu vào đã đủ |

---

## 4. Quy trình trước/sau (CP5)

### 4.1. Quy trình hiện tại

Sơ đồ (ASCII, Mermaid hoặc link ảnh trong `report/assets/`):

```text

```

| Bước | Actor | Input | Output | Thời gian / tần suất | Ghi chú |
|---:|---|---|---|---|---|
| 1 | | | | | |
| 2 | | | | | |
| 3 | | | | | |
| 4 | | | | | |
| 5 | | | | | |

**Bottleneck chính:**

### 4.2. Quy trình tương lai

Ghi rõ bước nào **Rule**, bước nào **AI**, bước nào **con người**, **boundary** ở đâu, **phương án quay về** khi AI sai.

```text

```

### 4.3. Before / after

| Chỉ số | Trước | Sau (kỳ vọng) | Ghi chú |
|---|---:|---:|---|
| Số bước | | | |
| Tổng thời gian | | | |
| Số bước thủ công | | | |
| Bottleneck chính | | | |
| Rủi ro mới phát sinh | | | |

---

## 5. Problem Statement v0 (CP5)

| Trường | Nội dung |
|---|---|
| **Actor** | |
| **Quy trình** | |
| **Bottleneck** | |
| **Impact** | |
| **Success Metric** (baseline → target, cách đo) | |
| **Boundary** (AI không được làm gì; khi nào cần con người kiểm tra — HITL) | |

Phản biện nhận được (từ AI hoặc nhóm khác) và nhóm có đồng ý không:

-

---

## 6. Mức can thiệp AI (CP6)

### 6.1. Ma trận độ mơ hồ × độ phức tạp

Bài của nhóm nằm ở ô:

Vì sao:

### 6.2. So sánh 4 mức

| Mức | Phương án cho bài của nhóm | Đủ khi nào | Rủi ro | Chọn? |
|---|---|---|---|---|
| **No AI** (sửa quy trình) | | | | |
| **Rule** | | | | |
| **Workflow** | | | | |
| **Agent** | | | | |

**Mức chọn:**

**Vì sao không chọn mức đơn giản hơn:**

### 6.3. AI Canvas rút gọn

| Thành phần | Nội dung |
|---|---|
| **Prediction** — AI dự đoán / tạo ra gì? | |
| **Judgment** — con người cân nhắc, quyết định gì? | |
| **Action** — hành động cuối cùng là gì, ai làm? | |
| **Outcome** — đo kết quả bằng gì? | |
| **Input** — AI cần dữ liệu đầu vào gì mỗi lần chạy? Có sẵn không? | |
| **Feedback** — lấy phản hồi ở đâu để cải thiện? | |

### 6.4. Hai câu hỏi của Google PAIR

- Người dùng muốn **được hỗ trợ (augment)** hay **giao hẳn việc (automate)**? Bằng chứng:
- AI sai kiểu nào tệ hơn, **báo nhầm** hay **bỏ sót**? Vì sao, và thiết kế đã xử lý thế nào:

---

## 7. Problem Statement v1 + tiêu chí đánh giá (CP6)

| Trường | Nội dung |
|---|---|
| **Actor** | |
| **Quy trình** | |
| **Bottleneck** | |
| **Impact** | |
| **Success Metric** (baseline → target, cách đo) | |
| **Boundary** | |
| **AI intervention point** | |
| **Mức chọn** | No AI / Rule / Workflow / Agent |
| **Rủi ro & người kiểm tra** | |

**Thay đổi so với v0 và lý do:**

| Trường | v0 | v1 | Vì sao đổi |
|---|---|---|---|
| | | | |

**Tiêu chí đánh giá đầu ra của AI (3–5 tiêu chí):**

| # | Tiêu chí | Đạt khi | Không đạt khi |
|---:|---|---|---|
| 1 | | | |
| 2 | | | |
| 3 | | | |

---

## 8. Quyết định (CP6)

### 8.1. Bốn rủi ro

| Rủi ro | Câu hỏi | Mức độ rủi ro (Thấp = an toàn / TB / Cao = nguy hiểm) | Lý do / bằng chứng |
|---|---|---|---|
| **Value** | Người dùng có thật sự cần và sẽ dùng không? | | |
| **Usability** | Người dùng có dùng được, có hiểu và sửa được đầu ra của AI không? | | |
| **Feasibility** | Có đủ dữ liệu, công cụ, kỹ năng để làm không? | | |
| **Viability** | Có hợp chi phí, pháp lý, quy định tổ chức không? Ai vận hành? | | |

### 8.2. Kết luận

**Quyết định:** Go / Not Yet / No-Go

**Lý do:**

**Nếu Go — pilot nhỏ nhất:**

**Nếu Not Yet — cần kiểm chứng gì trước:**

**Nếu No-Go — nên làm gì thay AI:**

**Ngưỡng dừng** (nếu sau … mà … thì quay về …):

---

## 9. Hạn chế và hướng tiếp theo

-

## 10. Tài liệu tham khảo

-
