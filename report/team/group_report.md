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

### 3.1. Assumption Map

| # | Giả định | Loại (Value / Usability / Feasibility / Viability) | Quan trọng (1–5) | Đã có bằng chứng (1–5) | Kiểm chứng trước? |
|---:|---|---|---:|---:|---|
| 1 | | | | | |
| 2 | | | | | |
| 3 | | | | | |
| 4 | | | | | |
| 5 | | | | | |
| 6 | | | | | |

*Điền 4–6 giả định; xóa dòng thừa.*

Giả định nhóm kiểm chứng trong buổi này:

### 3.2. Kiểm chứng

Cách đã dùng: Phỏng vấn / Survey / Log, ticket, review

Interview snapshot (mỗi buổi phỏng vấn một bảng, hoặc đặt file trong `report/assets/cp4-interview-snapshot-N.md`):

| Trường | Nội dung |
|---|---|
| Người được hỏi (vai trò, không ghi tên thật) | |
| Câu nói đáng nhớ nhất (nguyên văn) | |
| Lần gần nhất gặp vấn đề này: chuyện gì đã xảy ra? | |
| Hiện đang xử lý bằng cách nào (workaround)? | |
| Mất bao lâu, bao lần? | |
| Insight / opportunity rút ra | |

Tổng hợp:

| Nguồn | Số người / số mẫu | Tín hiệu xác nhận | Tín hiệu phản bác |
|---|---:|---|---|
| | | | |

**Nhóm đã sửa problem thế nào sau kiểm chứng:**

### 3.3. Research giải pháp đã có

| Công cụ / case / pattern | Link | Giải bước nào trong quy trình? | Điểm mạnh | Khoảng trống / rủi ro | Bài học cho nhóm |
|---|---|---|---|---|---|
| | | | | | |
| | | | | | |
| | | | | | |

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
