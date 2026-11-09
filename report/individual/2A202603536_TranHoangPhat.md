## 1. Thông tin học viên

- Họ tên: Trần Hoàng Phát
- MSSV: 2A202603536
- Email trường (không bắt buộc, repo có thể để public):
- Tên nhóm: Nhom4AE
- Link repo nhóm: https://github.com/Ntd1411/K5-L3A-DAY02-Nhom4AE-DiscoveryProblemFraming

---
 
## 2. Scan problem (CP1)
 
Lăng kính: **Lặp lại** · **Tốn thời gian** · **Cần đọc, tổng hợp nhiều thông tin** · **Pain từ người khác**.
 
| # | Lăng kính | Job Story: Khi… tôi muốn… để… | Ai chịu ảnh hưởng? | Dấu hiệu thật (thời gian, tần suất, số người, bằng chứng) |
|---:|---|---|---|---|
| 1 | Lặp lại | Khi tới hạn gửi báo cáo tiến độ cho giảng viên, tôi muốn gom việc cả nhóm đã làm trong 2 tuần qua vào một chỗ, để gửi đúng hạn mà không phải lục lại commit và tin nhắn. | Phát, 3 bạn cùng nhóm và giảng viên hướng dẫn | Tự bấm giờ 3 báo cáo: 38, 71 và 55 phút (trung bình khoảng 55 phút, dao động lớn tùy tuần); lặp lại mỗi 2 tuần. |
| 2 | Lặp lại | Khi bắt đầu mỗi buổi họp nhóm, tôi muốn nhớ lại nhóm đã quyết gì ở buổi trước, để không phải bàn lại từ đầu. | Phát và 3 bạn cùng nhóm | 2 trong 4 buổi họp gần nhất mất khoảng 10–15 phút để bàn lại việc đã quyết. |
| 3 | Lặp lại | Khi chạy test thủ công sau mỗi bản build ở công ty, tôi muốn ghi kết quả đúng mẫu ngay lần đầu, để QA lead không phải trả lại. | Phát và QA lead | Khoảng 25 phút/bản build, 4 bản build/tuần; 3 trong 16 bản build gần nhất bị QA lead trả lại vì sai mẫu. |
| 4 | Tốn thời gian | Khi tôi chia sẻ repository cho bạn cùng nhóm, tôi muốn họ chạy được ngay trên máy của họ, để không mất cả tối sửa lỗi môi trường. | 2 trong 3 bạn cùng nhóm và Phát | 3 sự cố trong 2 tháng; mỗi sự cố mất 2–4 giờ để cả nhóm chạy lại được. |
| 5 | Tốn thời gian | Khi sắp nộp báo cáo đồ án, tôi muốn trích dẫn, mục lục và số hình bảng đúng chuẩn, để không sửa tay đến nửa đêm. | Phát | Mất khoảng 3 giờ format ở báo cáo gần nhất; phải làm lại 2 lần sau khi nội dung thay đổi. |
| 6 | Cần đọc, tổng hợp nhiều thông tin | Khi cần tìm lại yêu cầu giảng viên đã nhắn qua Teams, Zalo và email trường, tôi muốn biết chính xác yêu cầu cuối cùng, để không làm sai đề. | Phát và nhóm đồ án | Mất 10–15 phút mỗi lần tìm, 2–3 lần/tuần; tuần 5 của học kỳ này làm sai yêu cầu và mất 1 ngày sửa lại. |
| 7 | Cần đọc, tổng hợp nhiều thông tin | Khi đọc 8 paper cho phần literature review của đồ án, tôi muốn biết paper nào cần đọc kỹ trước, để không mất cả buổi cho paper không liên quan. | Phát | Khoảng 40 phút/paper; bỏ 4 trong 8 paper đầu sau khi đọc. |
| 8 | Cần đọc, tổng hợp nhiều thông tin | Khi đọc mô tả công việc để ứng tuyển vị trí junior sau tốt nghiệp, tôi muốn biết vị trí cần gì và mình còn thiếu gì, để chuẩn bị CV đúng trọng tâm. | Phát | Khoảng 20 phút/mô tả; đã đọc 12 mô tả trong 3 tuần. |
| 9 | Pain từ người khác | Khi cả nhóm nhận feedback của giảng viên qua Teams, comment trong Docs và lời nói, các bạn muốn biết feedback nào đã xử lý và còn lại gì, để không sửa trùng hoặc bỏ sót. | 3 bạn cùng nhóm của Phát | Trong 3 vòng feedback gần nhất (khoảng 6 tuần): 6 lần hỏi "cái này sửa chưa?", 2 lần sửa trùng; có ảnh chụp đã che tên. |
| 10 | Pain từ người khác | Khi QA lead nhận bug report của tôi trên Jira, anh muốn có đủ bước tái hiện và môi trường ngay lần đầu, để không phải hỏi lại. | QA lead và Phát | 7 trong 20 bug report tháng trước nhận comment yêu cầu bổ sung thông tin trên Jira. |
 
**Nếu có dùng AI để gợi ý thêm:** ý nào AI gợi ý mà bạn giữ lại, ý nào bỏ và vì sao.
 
- 
---
 
## 3. Top 3 Problem Cards + quy trình nháp (CP2)
 
### Bảng chọn top 3
 
| Rank | Problem | Vì sao chọn | Điều còn chưa chắc |
|---:|---|---|---|
| 1 | Gom việc 2 tuần để viết báo cáo tiến độ (#1) | Quy trình lặp lại, có baseline bấm giờ (38, 71, 55 phút), actor rõ, vẽ được quy trình | Giảng viên có đọc kỹ phần tổng hợp không, hay chỉ xem kết quả chính? |
| 2 | Tìm yêu cầu cuối cùng của giảng viên giữa 3 kênh (#6) | Tần suất cao (2–3 lần/tuần), đã gây hậu quả thật (mất 1 ngày sửa lại ở tuần 5) | Giải pháp có thể chỉ là kỷ luật nhóm, chưa chắc cần công cụ |
| 3 | Bạn cùng nhóm không chạy được repo (#4) | Impact lớn mỗi lần (2–4 giờ, ảnh hưởng 2/3 bạn), bottleneck cụ thể | Chỉ có 3 sự cố trong 2 tháng, mẫu nhỏ; có thể đã được giải bằng cách chuẩn hóa môi trường |
 
Không chọn #3 và #10: cả hai thuộc bối cảnh QA ở công ty, bạn cùng nhóm khó hiểu domain và khó kiểm chứng ở CP3–CP4. Không chọn #2 và #9: cùng cluster "phối hợp nhóm" với #1, giữ #1 vì có baseline bấm giờ rõ hơn.
 
### Problem Card #1 — Báo cáo tiến độ
 
| Trường | Nội dung |
|---|---|
| Job Story | Khi tới hạn gửi báo cáo tiến độ cho giảng viên, tôi muốn gom việc cả nhóm đã làm trong 2 tuần qua vào một chỗ, để gửi đúng hạn mà không phải lục lại commit và tin nhắn |
| Actor | Phát, người phụ trách viết báo cáo tiến độ của nhóm 4 người cho giảng viên hướng dẫn |
| Thời điểm / bối cảnh | Mỗi 2 tuần, trước hạn gửi báo cáo cho giảng viên |
| Quy trình hiện tại (3–7 bước) | 1. Lấy commit từng người trên GitHub · 2. Đọc lại Zalo 2 tuần để biết ai làm gì · 3. Xem ghi chú họp · 4. Tổng hợp vào Google Docs · 5. Viết nhận định và kế hoạch kỳ tới · 6. Nhắn hỏi bạn cùng nhóm phần còn thiếu · 7. Gửi giảng viên |
| Bottleneck (bước nào, mất bao nhiêu phút) | Bước 2, đọc lại Zalo 2 tuần: khoảng 15 phút, vì thông tin việc đã làm nằm lẫn trong tin nhắn khác |
| Impact (nếu không giải thì sao) | Khoảng 55 phút mỗi 2 tuần cho 1 người (dao động 38–71 phút); báo cáo dễ thiếu việc của bạn khác nếu quên |
| Success metric (baseline → target) | Baseline: khoảng 55 phút/kỳ (3 lần bấm giờ: 38, 71, 55). Target theo mức: (a) No AI, bảng chung: dưới 40 phút (ước tính cắt khoảng 19 phút ở bước 1, 2, 6); (b) nếu thêm Workflow có AI soạn nháp bước 4–5: mục tiêu thử nghiệm dưới 25 phút. Chất lượng: baseline = số câu giảng viên hỏi lại trong 3 kỳ báo cáo trước (▶ ghi số câu), target không tăng. Cách đo: Phát tự bấm giờ 4 kỳ và đếm câu hỏi lại |
| Phương án không dùng AI | Mỗi người ghi việc đã làm vào bảng chung (Trello/Docs) ngay khi xong. Ước tính cắt bước 2 từ 15' xuống khoảng 3', bước 6 từ 4' xuống khoảng 1', bước 1 giảm khoảng 4' (giả thuyết, chưa đo) |
| Giả thuyết về AI (nếu có) | AI soạn nháp phần tổng hợp từ commit log và ghi chú họp đã gom; Phát đối chiếu và sửa trước khi gửi |
| Cảm nhận nhanh | No AI trước. Chỉ cân nhắc Workflow nếu sau 2 kỳ thử bảng chung, báo cáo vẫn trên 40 phút ở bước 4–5 |
 
```text
HIỆN TẠI — khoảng 55 phút / 2 tuần (dao động 38–71 phút)
 
[1 Lấy commit GitHub: 10'] → [2 Đọc lại Zalo: 15'] ← BOTTLENECK
→ [3 Xem ghi chú họp: 5'] → [4 Tổng hợp vào Docs: 10']
→ [5 Viết nhận định + kế hoạch: 8'] → [6 Hỏi bạn phần thiếu: 4']
→ [7 Gửi giảng viên: 3']
```
 
### Problem Card #2 — Tìm yêu cầu cuối cùng của giảng viên
 
| Trường | Nội dung |
|---|---|
| Job Story | Khi cần tìm lại yêu cầu giảng viên đã nhắn qua Teams, Zalo và email trường, tôi muốn biết chính xác yêu cầu cuối cùng, để không làm sai đề |
| Actor | Phát và các thành viên nhóm đồ án |
| Thời điểm / bối cảnh | Khi bắt đầu làm một hạng mục hoặc trước khi nộp, 2–3 lần mỗi tuần |
| Quy trình hiện tại (3–7 bước) | 1. Nhớ giảng viên đã nhắn ở kênh nào · 2. Tìm trong Teams · 3. Tìm trong Zalo · 4. Tìm trong email trường · 5. Đối chiếu tin nào là bản cuối khi có tin mâu thuẫn |
| Bottleneck (bước nào, mất bao nhiêu phút) | Chính: bước 5, xác định tin nào là yêu cầu cuối cùng còn hiệu lực. Chỉ khoảng 2 phút nhưng là bước dẫn tới sai đề (tuần 5, mất 1 ngày sửa lại). Phụ: bước 3, tìm trong Zalo, khoảng 4 phút, tốn thời gian nhất vì tin trôi nhanh trong nhóm chat đông |
| Impact (nếu không giải thì sao) | 10–15 phút mỗi lần, 2–3 lần/tuần; tuần 5 làm sai yêu cầu và mất 1 ngày sửa lại |
| Success metric (baseline → target) | Baseline: khoảng 12 phút/lần (ước lượng 10–15, chưa bấm giờ). Target: dưới 2 phút/lần, và 0 lần làm sai yêu cầu (hiện 1 lần/học kỳ). Cách đo: nhóm ghi lại mỗi lần tìm trong 3 tuần |
| Phương án không dùng AI | Một trang "Yêu cầu từ giảng viên" ghim trong Teams, cập nhật ngay khi có tin mới; thống nhất với giảng viên chỉ gửi yêu cầu qua một kênh |
| Giả thuyết về AI (nếu có) | Không rõ cần AI. Chỉ cân nhắc nếu trang tổng hợp thủ công vẫn không ai cập nhật |
| Cảm nhận nhanh | No AI |
 
```text
HIỆN TẠI — khoảng 12 phút / lần, 2–3 lần / tuần
 
[1 Nhớ kênh nào: 1'] → [2 Tìm Teams: 3'] → [3 Tìm Zalo: 4'] (tốn thời gian nhất)
→ [4 Tìm email trường: 2'] → [5 Đối chiếu tin cuối: 2'] ← BOTTLENECK (gây sai đề)
```
 
### Problem Card #3 — Bạn cùng nhóm không chạy được repo
 
| Trường | Nội dung |
|---|---|
| Job Story | Khi tôi chia sẻ repository cho bạn cùng nhóm, tôi muốn họ chạy được ngay trên máy của họ, để không mất cả tối sửa lỗi môi trường |
| Actor | Phát và 2 bạn cùng nhóm bị ảnh hưởng |
| Thời điểm / bối cảnh | Khi bạn mới clone repo, đổi máy, hoặc sau khi cập nhật thư viện; 3 lần trong 2 tháng |
| Quy trình hiện tại (3–7 bước) | 1. Bạn báo lỗi qua Zalo · 2. Phát hỏi hệ điều hành, phiên bản, xin log · 3. Tìm khác biệt môi trường giữa 2 máy · 4. Sửa requirements/README · 5. Bạn cài lại và thử · 6. Báo cả nhóm |
| Bottleneck (bước nào, mất bao nhiêu phút) | Bước 3, tìm khác biệt môi trường: khoảng 45 phút, vì phải đoán phiên bản nào lệch |
| Impact (nếu không giải thì sao) | Khoảng 2 giờ cho sự cố điển hình, tới 4 giờ khi nặng; bạn bị chặn không làm việc được |
| Success metric (baseline → target) | Baseline: khoảng 2 giờ/sự cố (ước lượng 2–4 giờ, chưa bấm giờ), 3 sự cố trong 2 tháng. Target: dưới 30 phút/sự cố, tối đa 1 sự cố trong 2 tháng. Cách đo: nhóm ghi lại mỗi sự cố |
| Phương án không dùng AI | Ghim phiên bản trong file requirements, viết README cài đặt, hoặc dùng container để mọi máy giống nhau |
| Giả thuyết về AI (nếu có) | Không cần AI: đây là chuẩn hóa môi trường, có đúng/sai rõ |
| Cảm nhận nhanh | No AI (README, ghim phiên bản, container). Nâng lên Rule chỉ khi có script kiểm tra version chạy tự động |
 
```text
HIỆN TẠI — khoảng 120 phút / sự cố (điển hình)
 
[1 Bạn báo lỗi Zalo: 5'] → [2 Hỏi HĐH, phiên bản, log: 12']
→ [3 Tìm khác biệt môi trường: 45'] ← BOTTLENECK
→ [4 Sửa requirements/README: 18'] → [5 Bạn cài lại và thử: 35']
→ [6 Báo cả nhóm: 5']
```
 
### Card muốn pitch nhất
 
- Card số: 1
- Vì sao: có baseline đo thật, quy trình lặp lại đều, và là card duy nhất có thể cần AI ở một bước, nên có nhiều thứ để nhóm phản biện.
- Câu hỏi muốn nhóm phản biện: "Nếu chỉ dùng bảng chung (mỗi người tự ghi việc xong) thì giảm được bao nhiêu phút, và phần còn lại có thật sự cần AI không?"
### AI đã phản biện card thế nào
 
| Điểm yếu AI chỉ ra | Đồng ý? | Đã sửa gì |
|---|---|---|
| Card #1: baseline 3 lần bấm giờ là mẫu nhỏ và dao động lớn (38–71 phút), chưa biết giảng viên có đọc kỹ báo cáo không | Đồng ý | Bấm giờ thêm 1–2 kỳ; đưa "giảng viên có đọc kỹ không" vào danh sách giả định kiểm chứng ở CP4 |
| Card #1: metric chỉ đo tốc độ, báo cáo nhanh hơn nhưng thiếu việc thì sao | Đồng ý | Thêm metric chất lượng: giảng viên không hỏi lại thêm |
| Card #2: có thể chỉ cần nhóm thống nhất một kênh, chưa cần công cụ | Đồng ý | Đổi cảm nhận nhanh sang No AI, thêm phương án trang ghim |
| Card #3: gợi ý dùng agent tự chẩn đoán lỗi môi trường | Không đồng ý | Giữ No AI: chuẩn hóa môi trường giải gốc vấn đề, không cần AI đoán |
 
---

## 4. Tôi đã tham gia phần nào (CP3 → CP7)

| Hoạt động | Tôi đã làm gì? | Kết quả / ảnh hưởng tới bài nhóm |
|---|---|---|
| Pitch Problem Card | | |
| Phản biện bài của bạn khác | Câu hỏi tôi đã đặt: | |
| Nhận phản biện | Câu hỏi tôi nhận được: | Tôi đã sửa gì: |
| Gom cluster / cây OST | | |
| Chọn candidate problem | | |
| Kiểm chứng / research | | |
| Quy trình nhóm | | |
| Problem Statement | | |
| Mức can thiệp AI | | |
| Quyết định | | |

---

## 5. Dùng AI

| Checkpoint | Tôi dùng AI để làm gì? | AI hữu ích ở đâu? | AI sai hoặc hời hợt ở đâu? | Tôi sửa gì bằng nhận định của mình? |
|---|---|---|---|---|
| CP1 Scan | | | | |
| CP2 Problem Card | | | | |
| CP4 Research | | | | |
| CP5 Quy trình | | | | |
| CP5–6 Problem Statement | | | | |
| CP6 Mức can thiệp / quyết định | | | | |

---

## 6. Reflection (CP7)

Trả lời bằng trải nghiệm thật của bạn, tối thiểu 200 từ cho các câu 6.1–6.6 (không tính 6.7, câu này được chấm riêng ở tiêu chí C5). **Không dùng AI để viết thay.**

**6.1. Tôi học được gì khi nghe top 3 problems của các bạn khác?**

**6.2. Nhóm có lúc nào bị "solution-first" (nghĩ giải pháp trước khi hiểu vấn đề) không? Lúc đó nhóm nhận ra và xử lý thế nào?**

**6.3. Tôi có đổi ý sau khi bị phản biện không? Kể một lần cụ thể.**

**6.4. Kết quả kiểm chứng (phỏng vấn/survey/research) có làm tôi bất ngờ không? Điều gì?**

**6.5. Điều khó nhất khi viết Problem Statement là gì?**

**6.6. Nếu làm lại, tôi sẽ đổi gì? Tôi sẽ phản biện nhóm mạnh hơn ở điểm nào?**

**6.7. Hiểu bài:** giải thích bằng 5–8 câu, không nhìn tài liệu, chuỗi *problem → quy trình → metric → boundary → mức can thiệp AI → quyết định* của bài nhóm mình.

---

## 7. Tài liệu tham khảo

-
