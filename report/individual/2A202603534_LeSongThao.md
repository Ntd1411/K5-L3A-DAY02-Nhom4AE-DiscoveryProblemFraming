# Báo cáo cá nhân — 2A202603534_LeSongThao

> **Trạng thái cập nhật ngày 09/11/2026:** Nhóm đã chọn **Card #1 của Trần Hoàng Phát — tổng hợp báo cáo tiến độ hai tuần**. Phân công chính thức được ghi trong [TEAM.md](../../TEAM.md).
> Mục 2–3 giữ phần khám phá và ba card cá nhân của Lê Sông Thao. CP5 đã đồng bộ với quyết định nhóm **Go — pilot phạm vi nhỏ với Rule**: khoảng 21 phút, target dưới 25 phút/kỳ. Có 10 ca đánh giá thiết kế Rule; mục 6 có bản nháp AI, chưa thay thế reflection tự viết được tính C4.
> Hướng dẫn và template: [docs/01-worksheet.md](../../docs/01-worksheet.md).

## 1. Thông tin học viên

- Họ tên: Lê Sông Thao
- MSSV: 2A202603534
- Email trường (không bắt buộc, repo có thể để public): songthao2412@gmail.com
- Tên nhóm: Nhom4AE
- Link repo nhóm: https://github.com/Ntd1411/K5-L3A-DAY02-Nhom4AE-DiscoveryProblemFraming
- Vai trò theo TEAM.md: ghi chép; chủ trì quy trình trước/sau, bảng before/after và assets; hỗ trợ Phát kiểm chứng CP4 và Giang ở CP6.
- Candidate nhóm đã chọn: gom việc cả nhóm đã làm trong hai tuần để viết báo cáo tiến độ cho giảng viên, theo Card #1 của Phát. Quyết định CP6: **Go — pilot phạm vi nhỏ với Rule**; con người viết nhận định, kiểm tra và tự gửi.

---

## 2. Scan problem (CP1)

Lăng kính: **Lặp lại** · **Tốn thời gian** · **Cần đọc, tổng hợp nhiều thông tin** · **Pain từ người khác**.

**Cách đọc bằng chứng:** Các số phút/tần suất trong bản CP1–CP2 là tự báo cáo của cá nhân; khi chưa kèm log bấm giờ, chúng được xem là ước lượng hồi tưởng. Các thông số kỹ thuật có tài liệu đối chiếu ở [mục 7](#7-tài-liệu-tham-khảo). README dự án xác nhận bối cảnh và kết quả kỹ thuật, không xác nhận thời gian thao tác hoặc trải nghiệm của người khác. Target là mục tiêu thử nghiệm, chưa phải kết quả đã đạt.

| # | Lăng kính | Job Story: Khi… tôi muốn… để… | Ai chịu ảnh hưởng? | Dấu hiệu thật (thời gian, tần suất, số người, bằng chứng) |
|---:|---|---|---|---|
| 1 | Tốn thời gian | Khi chạy xong nhiều cấu hình thử nghiệm mô hình trên Jupyter Notebook (như 5 mốc PCA hoặc 4 hướng xử lý văn bản ở bài lab), tôi muốn gom toàn bộ bảng chỉ số, ma trận nhầm lẫn và các mẫu dự đoán sai về một chỗ rồi rút ra nhận định so sánh, để hoàn thành báo cáo đánh giá trước giờ nộp mà không bị sót trường hợp lỗi. | Học viên kỹ thuật, sinh viên làm đồ án/lab học máy (cá nhân tôi và các bạn cùng lớp K5-L3A) | Mất 75–90 phút (trung bình ước lượng hồi tưởng ~80 phút/bài) cho mỗi bài thực nghiệm khi làm repo `vehicle-hog-svm-rbf-pca` (baseline + 5 cấu hình PCA `10, 20, 50, 100, 200` trên 400 ảnh) và bài lab `Day-01` (4 nhánh thử nghiệm); trung bình 1–2 lần/tuần. |
| 2 | Cần đọc, tổng hợp nhiều thông tin | Khi kiểm tra kết quả nhận diện biển số trên tập 200 ảnh thực nghiệm, tôi muốn đối chiếu nhanh ba biến thể ảnh (gốc, CLAHE, Otsu) và chuỗi ký tự đầu ra bị sai vị trí, để tìm đúng quy luật nhầm ký tự và cập nhật hàm hậu xử lý. | Người phát triển hệ thống thị giác máy tính (cá nhân tôi khi làm đồ án `smart-parking-lpr-system`) | Mở từng ảnh và đối chiếu file kết quả trong thư mục `ket_qua_danh_gia_200/` mất ~55 phút/lần mỗi khi chỉnh sửa luật hậu xử lý; đã lặp lại 4 đợt lớn trong quá trình làm đồ án tốt nghiệp. |
| 3 | Lặp lại | Khi nạp lại chương trình cho vi điều khiển ESP32 hoặc Arduino để kiểm thử cảm biến và relay, tôi muốn đối chiếu ngay chuỗi log trên Serial Monitor (`115200` baud) với trạng thái các chân tín hiệu ảo trên bảng điều khiển từ xa, để biết ngay lỗi nằm ở phần nối dây, logic chương trình hay cấu hình kết nối. | Sinh viên/kỹ sư nhúng làm dự án IoT (cá nhân tôi khi làm `esp32-motion-relay-blynk` và `esp32-smart-light-blynk`) | Mỗi buổi debug phần cứng/Wokwi lặp lại 8–9 lần nạp-thử; mỗi vòng dò lỗi mất ~10 phút (trong đó riêng bước đọc Serial + dò chéo sơ đồ dây `diagram.json` và 4–5 chân `V0–V4` mất ~7 phút; tổng 80–90 phút/buổi). |
| 4 | Lặp lại | Khi hoàn thiện một dự án phần cứng kết hợp phần mềm để đưa lên hồ sơ năng lực GitHub, tôi muốn trích xuất nhất quán sơ đồ chân linh kiện, thông số cấu hình, bảng kết quả đo kiểm và hướng dẫn xử lý sự cố từ code cùng báo cáo sang tài liệu `README.md`, để người xem hoặc nhà tuyển dụng chạy lại được ngay mà không lệch thông tin. | Sinh viên mới ra trường chuẩn bị hồ sơ ứng tuyển (cá nhân tôi trên 4 repo dự án GitHub) | Đã tự làm cho 4 repo (`smart-parking-lpr-system`, `vehicle-hog-svm-rbf-pca`, `esp32-motion-relay-blynk`, `esp32-smart-light-blynk`), mỗi repo mất 90–120 phút rà soát lại chân GPIO, thông số và ảnh minh họa. |
| 5 | Cần đọc, tổng hợp nhiều thông tin | Khi chọn linh kiện cảm biến và module chấp hành (như PIR HC-SR501, LDR, RTC DS1307, LM393, servo SG90) cho một mạch điều khiển mới, tôi muốn tra cứu nhanh điện áp hoạt động, dòng tiêu thụ và các chân giao tiếp I2C/UART bị xung đột trên board ESP32/Arduino, để không đấu nhầm chân hoặc sụt áp khi chạy thực tế. | Sinh viên ngành Điện tử - Tin học công nghiệp (cá nhân tôi và nhóm làm đồ án môn học 3–4 người) | Mỗi dự án mới mất 45–60 phút mở 4–5 datasheet và sơ đồ pinout ESP32 DevKit; từng bị lỗi sụt nguồn servo SG90 và nối nhầm chân GND của RTC vào `GPIO23` trong bản mô phỏng Wokwi. |
| 6 | Pain từ người khác | Khi người trực bãi xe vận hành giao diện desktop Tkinter lúc có xe vào/ra nhưng biển số bị mờ, góc nghiêng hoặc thiếu sáng khiến nhận diện thất bại, họ muốn biết ngay nguyên nhân không mở barie và thao tác xử lý tiếp theo trong 1 bước, để không làm ùn tắc xe ở cổng. | Nhân viên trực cổng bãi xe và người điều khiển phương tiện (trong bối cảnh đồ án `smart-parking-lpr-system`) | Trong 200 ảnh kiểm thử thực tế có 5/200 ca (2.5%) nhận diện sai ký tự và các ca góc nghiêng/thiếu sáng không mở barie tự động; thao tác chuyển sang chế độ thủ công và kiểm tra lịch sử SQLite mất 30–45 giây/xe. |
| 7 | Pain từ người khác | Khi người khác tải mã nguồn dự án nhúng hoặc thị giác máy tính của tôi về chạy thử trên máy họ, họ muốn kiểm tra ngay danh sách thư viện, cổng COM, đường dẫn dữ liệu và mã xác thực còn thiếu trước khi chạy, để không bị văng lỗi giữa chừng rồi phải nhắn tin hỏi lại tác giả. | Bạn cùng lớp, giảng viên chấm bài, người xem repo (3–5 người/dự án) | Ở các đồ án môn học và khóa luận, trung bình có 3–4 bạn hỏi lại cùng các lỗi: thiếu thư viện `BlynkESP32_BT_WF`, sai đường dẫn `DATA_PATH` trên Colab, hoặc không nhận cổng COM Arduino, mỗi lần hướng dẫn lại mất 15–20 phút. |
| 8 | Tốn thời gian | Khi chuẩn bị bộ dữ liệu ảnh cho bài toán phát hiện hoặc phân loại phương tiện, tôi muốn kiểm tra nhanh các ảnh bị trùng, sai nhãn thư mục hoặc kích thước quá nhỏ trước khi đưa vào huấn luyện, để không mất hàng giờ chạy huấn luyện rồi mới phát hiện dữ liệu bẩn. | Sinh viên/kỹ sư thị giác máy tính (cá nhân tôi khi làm tập 8.357 ảnh biển số và 400 ảnh 4 lớp xe) | Đợt làm đồ án tốt nghiệp phải kiểm tra 8.357 ảnh/nhãn (`Train: 5845, Valid: 1680, Test: 832`) và thời gian huấn luyện mất 3 giờ 13 phút/lần; chỉ cần sót nhãn sai là phải rà lại hàng trăm file mất 60–90 phút. |
| 9 | Lặp lại | Khi làm bài tập nhóm trên kho lưu trữ Git chung trong buổi học có giới hạn thời gian, tôi muốn biết ngay thành viên nào đang sửa mục nào và bài nộp đã đủ các tiêu chí chấm điểm chưa, để không bị ghi đè nội dung của nhau hoặc mất điểm vì sót mục bắt buộc. | Cả nhóm 4 thành viên trong lớp thực hành (nhóm `Nhom4AE` và các nhóm cùng lớp) | Mỗi buổi lab kéo dài 240 phút với 7–8 checkpoint liên tiếp; trong các buổi làm nhóm trước, nhóm mất 15–20 phút cuối giờ chỉ để ghép file, xử lý lệch định dạng và dò lại checklist nộp bài. |
| 10 | Cần đọc, tổng hợp nhiều thông tin | Khi tìm việc vị trí Fresher Embedded / IoT / Computer Vision sau khi tốt nghiệp, tôi muốn đối chiếu nhanh yêu cầu kỹ thuật của từng tin tuyển dụng (C/C++, STM32, ESP32, Linux, OpenCV) với những kỹ năng và dự án thực tế mình đã có, để điều chỉnh CV và ôn đúng phần còn hổng trước buổi phỏng vấn. | Sinh viên mới tốt nghiệp ngành Điện tử viễn thông (cá nhân tôi và bạn bè cùng khóa) | Mỗi tuần đọc 10–15 tin tuyển dụng; mất 25–30 phút/tin để lọc yêu cầu cốt lõi và chỉnh lại phần mô tả dự án trong CV cho khớp. |

**Nếu có dùng AI để gợi ý thêm:** ý nào AI gợi ý mà bạn giữ lại, ý nào bỏ và vì sao.

- **Tự scan trước (8 ý đầu #1 → #8):** Xuất phát trực tiếp từ quá trình tôi làm khóa luận tốt nghiệp (`smart-parking-lpr-system`), đồ án phân loại phương tiện (`vehicle-hog-svm-rbf-pca`), các mạch điều khiển ESP32 trên Wokwi/Blynk (`esp32-motion-relay-blynk`, `esp32-smart-light-blynk`) và bài thực hành Day 01 vừa qua.
- **Ý từ AI gợi ý mà tôi giữ lại và viết lại theo trải nghiệm thật (#9 và #10):**
  - *Ý #9 (Phối hợp nộp bài lab nhóm trên Git và đối chiếu rubric):* AI gợi ý góc nhìn về "đồng bộ tài liệu nhóm trong thời gian ngắn". Tôi thấy đúng với tình huống 4 anh em đang ngồi làm lab 240 phút hôm nay nên viết lại theo trải nghiệm thực tế và gắn dấu hiệu thật (15–20 phút ghép file cuối giờ).
  - *Ý #10 (Đối chiếu JD Fresher Embedded/CV với hồ sơ dự án cá nhân):* AI gợi ý góc nhìn của sinh viên mới ra trường tìm việc. Tôi viết lại dựa trên trải nghiệm thật của bản thân khi đang ứng tuyển vị trí Fresher Embedded / IoT / Computer Vision (đọc 10–15 JD/tuần, mất 25–30 phút/tin).
- **Ý từ AI gợi ý mà tôi loại bỏ:**
  - *"Xây dựng hệ thống tự động chẩn đoán và sửa mọi lỗi phần cứng mạch điện tử từ ảnh chụp breadboard":* Bỏ vì đây là **solution trá hình** quá rộng, thiếu quy trình thực tế ổn định và không khả thi với ảnh chụp mạch dây cắm chồng chéo.
  - *"Trợ lý ảo quản lý toàn bộ lịch học và tự động làm bài tập lập trình":* Bỏ vì vi phạm nguyên tắc liêm chính học tập và không giải quyết một bottleneck cụ thể nào trong quy trình làm việc thật.

---

## 3. Top 3 Problem Cards + quy trình nháp (CP2)

### Bảng chọn top 3

Đây là top 3 cá nhân đã chuẩn bị cho CP2. Nhóm đã chọn card báo cáo tiến độ của Phát; ba card dưới đây được giữ để thể hiện quá trình khám phá của tôi.

| Rank | Problem | Vì sao chọn | Điều còn chưa chắc |
|---:|---|---|---|
| 1 | Tổng hợp kết quả từ nhiều lần chạy thử nghiệm mô hình/notebook và viết nhận định phân tích lỗi cho báo cáo (#1) | Actor rõ, quy trình lặp lại ở mọi bài lab và đồ án thực nghiệm; vừa là trải nghiệm thật của tôi (`vehicle-hog-svm-rbf-pca`, `Day-01`), có thể là pain của các học viên khác; cần kiểm chứng mức độ phổ biến nếu nhóm chọn đào sâu ở CP4. | Các bạn nhóm khác mất nhiều thời gian ở bước gom bảng số liệu hơn hay ở bước viết phần nhận định so sánh & phân tích nguyên nhân sai (error analysis)? |
| 2 | Đối chiếu ảnh gốc, ảnh tiền xử lý và kết quả nhận diện sai trên tập kiểm thử biển số để tinh chỉnh luật hậu xử lý (#2) | Có baseline số liệu đo đạc rất rõ từ đồ án tốt nghiệp (`200` ảnh, accuracy `97.50%`, CER `1.44%`, 3 biến thể ảnh `original/CLAHE/Otsu`), dễ so sánh giữa Rule và Workflow. | Pain này đặc thù cho người làm bài toán OCR/biển số nên khó tìm được nhiều bạn ở nhóm khác trong lớp đang làm cùng bài toán để phỏng vấn ở CP4. |
| 3 | Đối chiếu log Serial Monitor, sơ đồ chân GPIO và trạng thái Virtual Pin trên Blynk khi debug mạch ESP32/Wokwi (#3) | Nỗi đau rất thật với dân làm nhúng/IoT (`esp32-motion-relay-blynk`, `esp32-smart-light-blynk`), từng bước thao tác cụ thể và đếm được số phút. | Nhiều lỗi phần cứng/nối dây thực chất chỉ cần checklist + hàm in log có cấu trúc (Rule) là giải quyết được phần lớn, chưa chắc cần đến mức can thiệp phức tạp hơn. |

### Problem Card #1

| Trường | Nội dung |
|---|---|
| Job Story | Khi chạy xong nhiều cấu hình thử nghiệm mô hình trên Jupyter Notebook (như 5 mốc PCA hoặc 4 phương pháp ở bài lab), tôi muốn gom toàn bộ bảng chỉ số, ma trận nhầm lẫn và các mẫu dự đoán sai về một chỗ rồi rút ra nhận định so sánh, để hoàn thành báo cáo đánh giá trước giờ nộp mà không bị sót trường hợp lỗi. |
| Actor | Học viên / sinh viên kỹ thuật thực hiện thực nghiệm học máy, thị giác máy tính hoặc xử lý ngôn ngữ trên Jupyter Notebook / Google Colab (cá nhân tôi và các học viên lớp K5-L3A). |
| Thời điểm / bối cảnh | Sau khi chạy xong 3–5 nhánh thử nghiệm trên Notebook (khoảng 1–2 tiếng trước hạn nộp bài lab hoặc báo cáo tiến độ đồ án), cần tổng hợp bảng kết quả và viết phần phân tích/nhận định vào báo cáo Markdown. |
| Quy trình hiện tại (3–7 bước) | 1. Cuộn lại từng ô (cell) trong Notebook để tìm các con số `Accuracy`, `Precision`, `Recall`, `F1-score`, thời gian chạy (10') · 2. Copy thủ công từng con số sang bảng Markdown và định dạng lại (15') · 3. Mở xem các biểu đồ `Confusion Matrix` và lọc các mẫu dự đoán sai (10') · 4. Đối chiếu tham số cấu hình (ví dụ `C=10, gamma='scale'`, số chiều PCA hoặc loại model) với các mẫu sai để tìm quy luật (10') · 5. Viết phần nhận định so sánh (narrative: phương pháp nào tốt nhất, vì sao sai ở lớp nào, đánh đổi giữa tốc độ và độ chính xác) (25') · 6. Kiểm tra lại số liệu giữa bảng và đoạn nhận định rồi commit nộp bài (10'). |
| Bottleneck (bước nào, mất bao nhiêu phút) | **Bước 5 — Viết phần nhận định so sánh và phân tích nguyên nhân sai (narrative & error analysis): mất khoảng 25 phút/bài** (cộng hưởng với Bước 2 + Bước 4 mất thêm 25 phút copy bảng và đối chiếu mẫu sai rải rác ở nhiều cell; tổng 6 bước là 80 phút/bài). |
| Impact (nếu không giải thì sao) | Mất ~80 phút (75–90 phút) cho mỗi bài báo cáo thực nghiệm; khi sát giờ nộp dễ copy nhầm chỉ số giữa các lần chạy (ví dụ nhầm F1 của lớp `Truck: 0.52` và `Bus: 0.63` hoặc nhầm kết quả giữa các mốc PCA), phần nhận định viết vội bị nông và mất điểm rubric. |
| Success metric (baseline → target) | Baseline: **~80 phút/bài**, ước lượng hồi tưởng từ 6 bước `10'+15'+10'+10'+25'+10'`. Target thử nghiệm: **dưới 30 phút/bài**, đồng thời **0 lỗi lệch số liệu** giữa output Notebook, bảng và đoạn phân tích. Cách đo dự kiến: bấm giờ 3 báo cáo thực nghiệm tiếp theo, từ lúc bắt đầu tìm output đã chạy xong đến khi kiểm tra và hoàn thiện báo cáo; không tính huấn luyện mô hình. Ghi riêng thời gian từng bước, tính cả kiểm tra/sửa nháp; đối chiếu tất cả chỉ số với output gốc. Chưa có kết quả đo sau cải tiến. |
| Phương án không dùng AI | Viết sẵn một hàm Python cuối Notebook tự động xuất toàn bộ metrics (`classification_report`, độ lệch `delta`, thời gian chạy, top mẫu sai) ra đúng định dạng bảng Markdown + dùng khung câu hỏi mẫu (template) cho phần nhận định. Cách này giảm mạnh thời gian copy số liệu nhưng người làm vẫn phải tự đọc các mẫu sai để viết phần giải thích và nhận định. |
| Giả thuyết về AI (nếu có) | Sau khi script Python đã gom bảng metrics chuẩn (kèm số dẫn xuất) và danh sách 5–10 mẫu dự đoán sai tiêu biểu, dùng AI để soạn bản nháp phần nhận định so sánh (chỉ ra sự đánh đổi và gợi ý giả thuyết nguyên nhân sai từ dữ liệu đầu vào); học viên kiểm tra lại và chỉnh sửa trước khi đưa vào báo cáo. |
| Cảm nhận nhanh | Thử **Rule + template** trước. Workflow là giả thuyết nếu sau khi xuất bảng tự động, bước đọc mẫu sai và viết nhận định vẫn không đạt mục tiêu; khi đó AI chỉ soạn nháp, con người đối chiếu nguồn và kiểm duyệt. Chưa có bằng chứng phương án đơn giản hơn không đủ. |

Quy trình nháp hiện tại:

```text
HIỆN TẠI — ước lượng 80 phút/bài (10' + 15' + 10' + 10' + 25' + 10')

[1. Cuộn Notebook tìm output các lần chạy: 10']
  → [2. Copy tay metrics sang bảng Markdown: 15']
  → [3. Xem Confusion Matrix & lọc mẫu đoán sai: 10']
  → [4. Đối chiếu tham số với mẫu sai để tìm nguyên nhân: 10']
  → [5. Viết nhận định so sánh & phân tích lỗi (narrative): 25'] ← BOTTLENECK CHÍNH
  → [6. Dò lại số liệu giữa bảng và chữ + commit: 10']
```

### Problem Card #2

| Trường | Nội dung |
|---|---|
| Job Story | Khi kiểm tra kết quả nhận diện biển số trên tập 200 ảnh thực nghiệm, tôi muốn đối chiếu nhanh ba biến thể ảnh (gốc, CLAHE, Otsu) và chuỗi ký tự đầu ra bị sai vị trí, để tìm đúng quy luật nhầm ký tự và cập nhật hàm hậu xử lý. |
| Actor | Sinh viên / kỹ sư phát triển pipeline Nhận diện biển số xe (OCR & Computer Vision) trong dự án `smart-parking-lpr-system`. |
| Thời điểm / bối cảnh | Sau mỗi lần chạy đánh giá 200 ảnh biển số Việt Nam đã gán nhãn trong đồ án, trước khi chấp nhận thay đổi luật hậu xử lý. Số liệu này mô tả tập đánh giá, chưa chứng minh thời gian xử lý tại bãi xe đang vận hành. |
| Quy trình hiện tại (3–7 bước) | 1. Chạy script đánh giá trên 200 ảnh đã gán nhãn để xuất file kết quả (3') · 2. Lọc ra các ảnh có kết quả dự đoán khác nhãn thật (`5/200` ảnh sai toàn biển hoặc các trường hợp CER > 0) (5') · 3. Mở ba biến thể của mỗi ảnh (`original`, `CLAHE`, `Otsu`) lên xem bằng mắt (15') · 4. Đối chiếu chuỗi ký tự PaddleOCR đọc được trên từng biến thể với định dạng biển số Việt Nam theo vị trí ký tự (15') · 5. Ghi chú quy luật nhầm (ví dụ `8` ↔ `B`, `0` ↔ `D`, mất dấu gạch) và sửa hàm hậu xử lý trong `nhan_dien_bien_so.py` (12') · 6. Chạy kiểm tra lại để đảm bảo không lỗi hồi quy (5'). |
| Bottleneck (bước nào, mất bao nhiêu phút) | **Bước 4 — Đối chiếu chuỗi OCR và confidence theo vị trí ký tự: khoảng 15 phút/vòng**, do phải dò giữa các biến thể. Bước 3 mở ảnh cũng tốn 15 phút; hai bước liên tiếp chiếm 30/55 phút. Chọn bước 4 làm điểm nghẽn chính cần giảm thao tác đối chiếu. |
| Impact (nếu không giải thì sao) | Mỗi vòng tinh chỉnh luật hậu xử lý mất ~55 phút; dễ sửa được lỗi ở ảnh này nhưng lại làm hỏng kết quả của ảnh khác đã đúng trước đó (regression) nếu không đối chiếu hết các biến thể. |
| Success metric (baseline → target) | Baseline thời gian: **~55 phút/vòng**, ước lượng hồi tưởng. Target thử nghiệm: **dưới 15 phút/vòng** cho cùng phạm vi 6 bước; giữ độ chính xác toàn biển **ít nhất 195/200 = 97.50%** và không làm sai thêm ảnh thuộc 195 ảnh đã đúng. Cách đo dự kiến: ghi thời gian từng bước trong 3 vòng rà soát tiếp theo, từ chạy đánh giá đến kiểm tra hồi quy; lưu danh sách ảnh đúng/sai trước và sau để đối chiếu từng ảnh, không chỉ so accuracy tổng. Kết quả trên 200 ảnh không được suy rộng thành chất lượng ngoài thực tế. |
| Phương án không dùng AI | Viết script Python ghép ba biến thể `original/CLAHE/Otsu` và chuỗi OCR tương ứng vào chung 1 ảnh tổng hợp (visual error sheet) cho những ca dự đoán sai, kèm bảng thống kê cặp ký tự hay nhầm nhất (`confusion pairs`). |
| Giả thuyết về AI (nếu có) | Với bài toán đã có nhãn chuẩn và cấu trúc biển số Việt Nam cố định theo vị trí, script thống kê + luật (Rule) đã giải quyết được phần lớn; AI chỉ hữu ích nếu cần phân loại tự động điều kiện gây lỗi của ảnh (mờ chuyển động, chói sáng, góc nghiêng, bẩn biển số) để gợi ý hướng thu thập thêm dữ liệu. |
| Cảm nhận nhanh | **Rule**: ghép ảnh, lọc sai lệch và thống kê theo nhãn chuẩn. Phân nhóm điều kiện ảnh lỗi bằng AI chỉ là giả thuyết mở rộng, chưa có bằng chứng cần đưa vào phạm vi card. |

Quy trình nháp hiện tại:

```text
HIỆN TẠI — ước lượng 55 phút/vòng (3' + 5' + 15' + 15' + 12' + 5')

[1. Chạy đánh giá 200 ảnh: 3' gồm xử lý và chuẩn bị/xuất kết quả]
  → [2. Lọc danh sách các ca sai lệch so với nhãn thật: 5']
  → [3. Mở ba biến thể gốc/CLAHE/Otsu: 15']                  ← BƯỚC TỐN THỜI GIAN
  → [4. So chuỗi OCR & confidence theo vị trí ký tự: 15']   ← BOTTLENECK CHÍNH
  → [5. Ghi quy luật nhầm ký tự & sửa hàm hậu xử lý: 12']
  → [6. Chạy test lại để kiểm tra hồi quy (regression): 5']
```

### Problem Card #3

| Trường | Nội dung |
|---|---|
| Job Story | Khi nạp lại chương trình cho vi điều khiển ESP32 hoặc Arduino để kiểm thử cảm biến và relay, tôi muốn đối chiếu ngay chuỗi log trên Serial Monitor (`115200` baud) với trạng thái các chân tín hiệu ảo trên bảng điều khiển từ xa, để biết ngay lỗi nằm ở phần nối dây, logic chương trình hay cấu hình kết nối. |
| Actor | Sinh viên / kỹ sư lập trình nhúng & IoT làm việc với ESP32, cảm biến (PIR, LDR, RTC) và bảng điều khiển Blynk / mô phỏng Wokwi. |
| Thời điểm / bối cảnh | Trong lúc lắp mạch hoặc chạy mô phỏng Wokwi kết nối Blynk Cloud mà thiết bị hoạt động ngược hoặc không phản hồi (ví dụ nhấn nút không nhảy relay, PIR có chuyển động nhưng còi không kêu, hoặc trạng thái trên app Blynk không khớp mạch). |
| Quy trình hiện tại (3–7 bước) | 1. Kích hoạt thử tác nhân trên mạch (bấm nút vật lý / đổi độ sáng LDR / tạo chuyển động PIR) (1') · 2. Đọc dòng log trôi liên tục trên Serial Monitor (`115200` baud) (3') · 3. Chuyển cửa sổ sang kiểm tra trạng thái các chân `V0–V4` trên Blynk Web/Mobile (1') · 4. Mở lại code `.ino` và file sơ đồ dây `diagram.json` để dò từng chân `GPIO` và mức tích cực (`HIGH/LOW`) (4') · 5. Khoanh vùng nguyên nhân, sửa code hoặc dây nối và nạp lại (1'). |
| Bottleneck (bước nào, mất bao nhiêu phút) | **Bước 4 — Dò chéo GPIO/mức tích cực giữa code và `diagram.json`: khoảng 4 phút/vòng**, là bước lâu nhất. Bước 2 đọc log tốn thêm 3 phút; hai bước cộng lại chiếm 7/10 phút mỗi vòng. |
| Impact (nếu không giải thì sao) | Mất 80–90 phút mỗi buổi chỉ để tìm những lỗi cấu hình nhỏ (như relay kích mức thấp `LOW` thay vì `HIGH`, quên bật `alarmMode` ở `V3`, hoặc nối nhầm chân `GND` của RTC sang `GPIO23`). |
| Success metric (baseline → target) | Baseline: **~10 phút/vòng dò lỗi**, ước lượng hồi tưởng; 8–9 vòng/buổi. Target thử nghiệm: **dưới 3 phút/vòng** và dưới 4 vòng/buổi có phạm vi thử tương đương. Cách đo dự kiến: ghi lại lỗi, thời điểm kích hoạt thử, thời điểm sửa và kiểm tra lại trong 3 buổi tiếp theo; tính cả đọc log, dò dây và nạp lại. Chỉ so các buổi có nhóm lỗi cấu hình tương tự; không giảm kiểm thử để làm đẹp số vòng. Kiểm tra lại cả điều khiển tại chỗ và trạng thái Blynk sau mỗi lần sửa. |
| Phương án không dùng AI | Chuẩn hóa định dạng in log Serial theo bảng trạng thái cố định mỗi khi có sự kiện (`[TIME] [GPIO] [VIRTUAL_PIN] [MODE] [STATE]`) + tạo bảng checklist kiểm tra nhanh 5 lỗi phổ biến (như bảng Troubleshooting tôi đã lập trong `README.md` của 2 repo ESP32). |
| Giả thuyết về AI (nếu có) | Đưa đoạn log Serial bất thường + file `diagram.json` + đoạn code cấu hình pin cho công cụ phân tích để chỉ ra ngay điểm mâu thuẫn giữa sơ đồ nối dây và code điều khiển. |
| Cảm nhận nhanh | **No AI** với checklist và chuẩn hóa log; **Rule** nếu thêm script kiểm tra pin/kết nối có logic cố định. Kiểm tra chéo tự động giữa `diagram.json` và `.ino` chưa phải lý do đủ để cần AI. |

Quy trình nháp hiện tại:

```text
HIỆN TẠI — ước lượng 10 phút/vòng (1' + 3' + 1' + 4' + 1') × 8–9 vòng = 80–90 phút/buổi

[1. Kích hoạt cảm biến/nút nhấn trên mạch/Wokwi: 1']
  → [2. Đọc log Serial Monitor 115200 baud đang trôi: 3']      ← BƯỚC TỐN THỜI GIAN
  → [3. Kiểm tra trạng thái V0-V4 trên Blynk Dashboard: 1']
  → [4. Dò chéo GPIO trong code .ino và diagram.json: 4']      ← BOTTLENECK CHÍNH
  → [5. Sửa dây/code và biên dịch nạp lại: 1']
```

### Card muốn pitch nhất (ưu tiên cá nhân)

- Card số: **Card #1** (*Tổng hợp kết quả từ nhiều lần chạy thử nghiệm mô hình/notebook và viết nhận định phân tích lỗi cho báo cáo*).
- Vì sao:
  1. Đây là vấn đề xuất phát từ trải nghiệm thực tế của cá nhân tôi (khi làm báo cáo thực nghiệm cho `vehicle-hog-svm-rbf-pca`, `smart-parking-lpr-system` và bài lab `Day-01`), có thể cũng xuất hiện ở các bạn làm thực nghiệm tương tự. **Mức độ phổ biến ngoài trải nghiệm của tôi chưa được kiểm chứng**.
  2. Quy trình có ranh giới rất rõ giữa phần **không nên dùng AI** (lấy số liệu metrics chính xác và tính sẵn độ lệch từ code — phải dùng Rule/Script để không bịa số) và phần **có thể thử AI hỗ trợ** (soạn nháp nhận định so sánh và gợi ý giả thuyết lỗi từ danh sách mẫu sai để con người kiểm duyệt).
  3. Nếu được chọn, có thể tìm người ngoài nhóm đã làm thực nghiệm tương tự để kiểm chứng; chưa khẳng định đã tìm được người phù hợp hay đã phỏng vấn.
- Câu hỏi muốn nhóm phản biện:
  > *"Nếu chúng ta viết sẵn một đoạn script Python ở cuối Notebook để tự xuất bảng Markdown các chỉ số (Accuracy, Precision, Recall, F1, thời gian chạy) cùng danh sách mẫu sai, thì phần việc còn lại (đọc mẫu sai và viết nhận định so sánh) có thực sự còn đủ nặng để cần tới một Workflow có AI hỗ trợ không, hay chỉ cần một khung câu hỏi mẫu (template No AI) là đủ?"*

### AI đã phản biện card thế nào

Tôi đã đưa cả 3 Problem Cards vào prompt đóng vai **"Product Manager hoài nghi"** (theo mẫu trong `docs/01-worksheet.md`) và nhận được các phản biện sau:

| Điểm yếu AI chỉ ra | Đồng ý? | Đã sửa gì |
|---|---|---|
| **Ở Card #1:** Ban đầu tôi gộp chung "gom số liệu từ các cell và viết nhận định" thành 1 bước nghẽn 50 phút. AI chỉ ra đây là 2 bản chất khác nhau: gom số liệu là việc cơ học (Rule/script giải được ngay), còn viết nhận định & phân tích mẫu sai mới là việc cần tư duy tổng hợp. | Đồng ý hoàn toàn | Tách rõ quy trình Card #1 thành **Bước 2** (copy số liệu: 15'), **Bước 4** (đối chiếu tham số với mẫu sai: 10') và **Bước 5** (viết nhận định so sánh & phân tích lỗi: 25' — đánh dấu là Bottleneck chính). Đồng thời cập nhật "Phương án không dùng AI" là dùng script xuất bảng Markdown trước. |
| **Ở Card #1:** Metric ban đầu tôi chỉ viết "giảm thời gian từ 80 phút xuống 30 phút". AI phản biện: nếu làm nhanh hơn mà copy sai số hoặc nhận định hời hợt thì báo cáo vẫn mất điểm. | Đồng ý | Bổ sung điều kiện chất lượng vào **Success metric**: *"đồng thời 0 lỗi lệch số liệu giữa bảng kết quả và đoạn phân tích"*. |
| **Ở Card #3:** Ban đầu tôi đặt cảm nhận nhanh là "Workflow (AI đọc log Serial)". AI phản biện rằng log do chính mình lập trình trong file `.ino`, tại sao không sửa hàm `Serial.println()` cho có cấu trúc rõ ràng ngay từ đầu mà lại dùng AI đi đọc log lộn xộn? | Đồng ý | Đổi cảm nhận nhanh của Card #3 về **No AI hoặc Rule** (chuẩn hóa định dạng in log Serial + bảng checklist 5 lỗi phổ biến), giúp tôi không rơi vào bẫy "AI-first" cho bài toán phần cứng cơ bản. |
| **Rà soát bổ sung ngày 09/11/2026:** Các target chưa nêu cách đo; Card #2 đếm ảnh gốc lặp; Card #2–3 gộp nhiều bước vào bottleneck; Card #1 chọn Workflow khi chưa chứng minh Rule + template không đủ. | Bản sửa theo phản biện, cần cá nhân kiểm tra lại | Bổ sung kế hoạch đo cho cả 3 card; sửa Card #2 thành 3 biến thể; chỉ rõ bước nghẽn chính và bước tốn thời gian liên quan; giữ Rule + template là phương án thử trước ở Card #1. |
| **Tính khả thi của target:** Ở Card #2, kể cả bỏ toàn bộ 30 phút của bước 3–4 thì vẫn còn 25 phút, chưa đạt dưới 15; ở Card #3, chỉ sửa log chưa chứng minh giảm được cả thao tác nạp/kiểm tra. | Cần kiểm chứng thêm | Giữ target là giả thuyết thử nghiệm, không coi phương án đề xuất đã bảo đảm đạt. Khi đo cần chỉ rõ bước nào giảm bao nhiêu; nếu không đủ phải điều chỉnh target có lý do. |

---

## 4. Tôi đã tham gia phần nào (CP3 → CP7)

Nhóm đã chọn Card #1 của Phát theo TEAM.md. Nhật ký dưới đây đối chiếu [biên bản CP3 và tổng hợp CP4 của nhóm](https://github.com/Ntd1411/K5-L3A-DAY02-Nhom4AE-DiscoveryProblemFraming/blob/492b7f7e35330605948cfc580506892cbf1cdd63/report/team/group_report.md) từ nhánh `team/cp3-cp6` với các sản phẩm CP5–CP6 của cá nhân. Nội dung hỏi–đáp được dẫn theo biên bản nhóm; không tự tạo thêm lời phát biểu ngoài nguồn đó.

| Hoạt động | Tôi đã làm gì? | Kết quả / ảnh hưởng tới bài nhóm |
|---|---|---|
| Pitch Problem Card | Biên bản CP3 mục 2.1, dòng 10–12 ghi ba card của tôi: báo cáo thực nghiệm, đối chiếu lỗi OCR và debug ESP32. Card muốn pitch nhất đã chuẩn bị ở mục 3 là báo cáo thực nghiệm. | Báo cáo thực nghiệm vào shortlist, được ghi 31 điểm; nhóm chọn báo cáo tiến độ của Phát với 35 điểm. |
| Phản biện bài của bạn khác | Theo biên bản CP3, tôi hỏi Giang: “Vì tên file có cú pháp cố định, RegEx hoặc validation lúc nộp giải quyết được bao nhiêu phần trăm trường hợp?” Tôi còn hỏi Dũng về form gần nhất, số trường lặp và hậu quả; hỏi Phát về sự cố còn lại sau lockfile/container. | Câu hỏi tập trung vào hành vi đã xảy ra và phần còn lại sau giải pháp đơn giản. Card kiểm tra tên file của Giang hiện chọn Rule; câu trả lời định lượng cho các câu hỏi chưa được ghi trong bảng pitch nên không tự bổ sung. |
| Nhận phản biện | Theo biên bản: Giang hỏi liệu sau khi script xuất metrics/mẫu sai có nhất thiết cần AI; Phát hỏi visual error sheet có đủ giảm OCR từ 55 xuống 15 phút; Dũng hỏi chuẩn hóa log/checklist còn vấn đề nào cần mức cao hơn Rule. | Bản card cập nhật ưu tiên Rule + template ở #1; ở #2 giữ target là giả thuyết vì bỏ cả 30 phút đối chiếu vẫn còn 25 phút; ở #3 giữ No AI/Rule và chỉ rõ bước dò GPIO 4 phút là nghẽn chính. Các phản biện làm rõ điều kiện trước khi tăng mức can thiệp. |
| Gom cluster / cây OST | Theo phân công ghi chép, đối chiếu kết quả Dũng chủ trì trong mục 2: 12 candidate được gom thành 3 cluster, OST có một outcome và các nhánh pain. | Ba card của tôi nằm ở cluster C; bài nhóm chọn candidate báo cáo tiến độ ở cluster B. Không nhận là người chủ trì chấm điểm hoặc cây OST. |
| Chọn candidate problem | Đã chọn triển khai Card #1 của Phát; lựa chọn này được xác nhận trong TEAM.md trên main. | Bài chung chuyển sang tổng hợp báo cáo tiến độ hai tuần; ba card cá nhân ở mục 3 vẫn được giữ. |
| Kiểm chứng / research | Theo TEAM.md, hỗ trợ Phát CP4. Báo cáo nhóm ghi 8 phản hồi, 7 hợp lệ, 4/7 mất trên 30 phút và 2/7 đã thấy task board đủ dùng; bộ câu hỏi ở assets. | Dùng tín hiệu phản bác của nhóm để giữ phương án bảng chung No AI thử trước trong CP5. Đây là kết quả do báo cáo nhóm tổng hợp, không khai tôi trực tiếp thu cả 8 phản hồi; chưa có bảng phản hồi gốc để đối chiếu từng người. |
| Quy trình nhóm | Đã hoàn thiện [CP5 có AI hỗ trợ](../assets/cp5-lesongthao-workflow-draft.md) trong [báo cáo nhóm mục 4](../team/group_report.md#4-quy-trình-trướcsau-cp5), đồng bộ quyết định Rule ở bản nhóm 53f9eb6: 2 sơ đồ, actor/input/output/thời gian, before/after, kiểm tra và quay về. | Baseline khoảng 55 phút; Rule dự kiến 21 phút, target dưới 25. Tách 6 bước lập báo cáo (2 Rule + 4 con người) với cập nhật task trong kỳ. No AI khoảng 36 phút chỉ còn là đối chiếu; chưa có kết quả pilot. |
| Minh họa quy trình | Chuẩn bị [kịch bản giả định từ task đến báo cáo](../assets/cp5-simulated-progress-report.md), với 13 dòng dữ liệu tổng hợp và bản sau đối chiếu. | Đầu ra mẫu có 7 việc hoàn thành; giải thích cách xử lý trùng, sai kỳ, chưa xác nhận và nguồn thiếu. Đây là minh họa thiết kế, không khai là hoạt động đồ án hoặc khảo sát của người thật. |
| Problem Statement | Đối chiếu PS v0/v1 của nhóm với quy trình trong [tài liệu hỗ trợ CP6](../assets/cp6-lesongthao-metric-boundary-review.md): metric, phạm vi thời gian, nguồn trạng thái và boundary. | PS v1 chọn Rule, không có AI intervention point, thêm giới hạn cập nhật 10 phút/người/kỳ. Vai trò của tôi là đối chiếu quy trình, không nhận là người chủ trì viết PS. |
| Mức can thiệp AI | Đồng bộ mức Rule; rà 5 tiêu chí với CP5 và chuẩn bị [10 ca input/đầu ra mong đợi](../assets/cp6-rule-evaluation-cases.md) có AI hỗ trợ. | Sửa tổng Rule 2 + 1 = 3 phút; ca đánh giá bao phủ sai kỳ, trùng, thiếu/mâu thuẫn dữ liệu, ngoài quyền và lỗi nguồn. Chưa chạy trên triển khai; không nhận bonus eval AI B3. |
| Quyết định | Đối chiếu mục 8: Go — pilot nhỏ với Rule, thử 2 kỳ rồi tiếp tục đủ 4 kỳ nếu đạt. | Làm rõ trường hợp đúng 25 phút: target dưới 25 nên 25 là chưa đạt; ngưỡng dừng cũng kiểm tra task bị bỏ sót và cập nhật quá 10 phút/người/kỳ. Không khai pilot đã chạy. |

**Nguồn nhật ký C3:** bảng pitch của nhóm, mục 2.1 dòng 3/6/9 và 10–12; đối chiếu bản card hiện tại ở mục 3 và bảng phản biện. Phản biện AI ở CP2 được ghi riêng; những câu trả lời hoặc thay đổi của người khác chưa có trong biên bản không được suy diễn thêm.

---

## 5. Dùng AI

Bảng ghi các lần dùng AI ở CP1–CP2 và lần rà soát tài liệu này. Những hoạt động CP4–CP6 chưa có sản phẩm không được khai là đã thực hiện.

| Checkpoint | Tôi dùng AI để làm gì? | AI hữu ích ở đâu? | AI sai hoặc hời hợt ở đâu? | Tôi sửa gì bằng nhận định của mình? |
|---|---|---|---|---|
| **CP1 Scan** | Sau khi tự liệt kê 8 vấn đề từ các dự án GitHub cá nhân (`smart-parking-lpr-system`, `vehicle-hog-svm-rbf-pca`, 2 dự án `ESP32 Blynk` và lab `Day-01`), tôi hỏi AI gợi ý thêm góc nhìn theo 4 lăng kính cho sinh viên mới tốt nghiệp ngành Điện tử - Tin học công nghiệp. | Gợi ý thêm góc nhìn về phối hợp làm lab nhóm trên Git trong thời gian ngắn (#9) và rà soát JD ứng tuyển Fresher Embedded/CV (#10). | Đưa ra 2 gợi ý mang tính "solution trá hình" và viễn tưởng: *"AI tự chẩn đoán lỗi mạch điện từ ảnh chụp breadboard"* và *"trợ lý tự làm bài tập"*. | Loại bỏ hoàn toàn 2 ý viễn tưởng/solution trá hình; viết lại ý #9 và #10 theo đúng cấu trúc Job Story không chứa từ khóa giải pháp và gắn số phút thực tế của bản thân. |
| **CP2 Problem Card** | Dùng prompt "Product Manager hoài nghi" để phản biện 3 Problem Cards của tôi. | Chỉ ra rất trúng việc tôi đang gộp bước "copy bảng chỉ số" và bước "viết nhận định phân tích lỗi" ở Card #1, và chỉ ra Card #3 có thể giải quyết bằng việc sửa câu lệnh `Serial.println()` thay vì dùng AI. | Khi phản biện Card #2 (nhận diện biển số), AI khuyên thay toàn bộ pipeline YOLOv8n + PaddleOCR bằng một mô hình VLM lớn chạy trên cloud mà không tính đến độ trễ nhận diện cục bộ (`619 ms/ảnh`) và yêu cầu chạy offline ở cổng bãi xe. | Giữ nguyên kiến trúc cục bộ ở Card #2, chỉ tập trung vào bài toán công cụ hỗ trợ rà soát tập ảnh lỗi trong giai đoạn phát triển; tách bạch bước Rule (script xuất bảng) và bước AI (nháp nhận định) ở Card #1. |
| **Rà soát báo cáo cá nhân — 09/11/2026** | Dùng Codex đối chiếu rubric, TEAM.md, README của 4 dự án và biên bản CP3–CP4 khi gộp nhánh chung. | Phân biệt card cá nhân với candidate nhóm; phát hiện thiếu cách đo, đếm lặp biến thể ảnh và lựa chọn Workflow quá sớm. | Giới hạn: AI không quan sát buổi pitch/phỏng vấn và không xác minh được số phút hồi tưởng chỉ từ README. | Ghi nguồn cho nhật ký hỏi–đáp theo biên bản CP3; không tự thêm câu trả lời chưa có hoặc nhận mình đã thu dữ liệu khảo sát. |
| **CP5 — quy trình và rà soát** | Nhờ Codex vẽ Mermaid và tích hợp CP5; sau đó đồng bộ quyết định Rule ở bản nhóm mới nhất. | Làm rõ input/output, tổng thời gian 21 phút, kiểm tra và quay về. | Bản nháp AI ban đầu hỏi bổ sung rồi gửi thẳng; phương án No AI 36 phút cũng không còn là mức cuối khi nhóm đã chốt Rule. | Giữ kiểm tra sau mọi bổ sung; dùng Rule 21 phút là ước tính thiết kế chính, đo cập nhật task của cả 4 người riêng; không khai kết quả pilot. |
| **CP6 — góp ý từ quy trình** | Dùng Codex đối chiếu metric/boundary và 5 tiêu chí Rule của nhóm với sơ đồ CP5. | Phát hiện tổng Rule 3 phút mâu thuẫn tiêu chí dưới 2 phút, và ngưỡng trên 25 bỏ trống trường hợp đúng 25. | Rà soát tài liệu không chứng minh target khả thi hoặc dữ liệu khảo sát đúng; không thay thế pilot. | Đồng bộ phép cộng và ngưỡng; tách target với kết quả đã đo, dữ liệu thiếu không đổi thành 0. |
| **CP6 — ca đánh giá** | Nhờ Codex soạn 10 cặp dữ liệu tổng hợp/đầu ra mong đợi cho Rule. | Cụ thể hóa các lỗi cần phát hiện theo tiêu chí 1, 2, 3, 5. | Ca tổng hợp không chứng minh thời gian, chất lượng pilot hoặc kết quả triển khai; Rule không đủ điều kiện bonus eval AI. | Ghi rõ chưa chạy; tiêu chí thời gian và bốn kỳ liên tiếp cần đo trên dữ liệu thật. |
| **CP5 — tình huống minh họa** | Nhờ Codex dựng một đồ án giả định, task thô, xác nhận thủ công trong kịch bản và báo cáo mẫu. | Làm rõ một task có nhiều nguồn, PR merge chưa phải Done, việc ngoài kỳ và chi phí cập nhật của cả nhóm. | Tình huống và phân bổ 21 phút đều là dữ liệu dựng thêm, không phải quan sát hoặc phép đo. | Ghi data_origin=synthetic trong từng dòng CSV; tách ví dụ khỏi khảo sát, baseline và kết quả pilot. |
| **CP7 — bản nháp tham khảo** | Theo yêu cầu cá nhân, Codex soạn bản nháp reflection từ tài liệu GitHub, giữ bản riêng và đưa vào mục 6, có ghi nguồn AI. | Gợi ý cách liên hệ card cá nhân, card nhóm, metric và giới hạn bằng chứng. | Bản nháp không xác nhận trải nghiệm hay lời phát biểu thực tế của Thao; theo rubric, dùng AI viết thay reflection không đáp ứng C4. | Phần nháp được nhận diện rõ; câu trả lời chính thức vẫn cần cá nhân tự viết từ trải nghiệm thật. |

---

## 6. Reflection (CP7)

> **Bản nháp do AI soạn theo yêu cầu của Thao, chưa phải reflection tự viết được tính C4.** Nội dung dựa trên tài liệu và sản phẩm trong repo; Thao cần tự viết câu trả lời từ trải nghiệm của mình trước khi nộp. Không tự nhận đã phỏng vấn hoặc có cảm xúc/lời phát biểu chưa được xác nhận. [Nguồn bản nháp](../assets/cp7-lesongthao-reflection-draft.md).

### 6.1. Học được gì từ các card khác?

Từ các card của nhóm, tôi có thể so sánh cách xác định một pain đáng đào sâu. Card của Phát về báo cáo tiến độ có actor cụ thể, chu kỳ hai tuần và ba mốc thời gian 38, 71, 55 phút. Card của tôi về báo cáo thực nghiệm có quy trình rõ nhưng baseline khoảng 80 phút vẫn là ước lượng hồi tưởng. Điểm cần học là phân biệt vấn đề quen thuộc với vấn đề đã có bằng chứng đủ rõ để nhóm cùng kiểm chứng.

### 6.2. Dấu hiệu nghĩ giải pháp quá sớm

Trong bản card cá nhân, tôi từng nghiêng về Workflow để soạn nháp nhận định. Tuy nhiên, thao tác lấy chỉ số và xuất bảng có thể giải bằng script, còn phần viết có thể thử một template trước. Với card của Phát, cần giải quyết thông tin phân tán và cách cập nhật việc chung trước khi thêm AI. Dấu hiệu cần tự kiểm tra là chọn công nghệ khi chưa biết phương án đơn giản hơn còn thiếu ở bước nào.

### 6.3. Một thay đổi có trong tài liệu

Biên bản CP3 ghi Giang hỏi nếu script đã xuất metrics và mẫu sai thì có nhất thiết cần AI không. Bản card cập nhật ưu tiên Rule cùng template trước, sau đó mới cân nhắc Workflow nếu phần nhận định vẫn còn nghẽn. Câu hỏi của Phát về mục tiêu OCR cũng giúp làm rõ: chỉ giảm 30 phút đối chiếu trong tổng 55 phút thì vẫn còn 25 phút, chưa đủ để tuyên bố đạt dưới 15 phút. Đây là các điểm có thể đối chiếu giữa biên bản và bản card, còn cảm nhận về quá trình đổi ý cần chính tôi tự kể.

### 6.4. Điều rút ra từ bằng chứng hiện có

Báo cáo nhóm tổng hợp 8 phản hồi khảo sát, 7 hợp lệ; 4/7 người mất trên 30 phút nhưng 2/7 người đã thấy task board đủ dùng. Tín hiệu phản bác này phù hợp với hướng thử bảng chung trước khi thêm AI. Tôi cần phân biệt số liệu do nhóm tổng hợp với điều mình trực tiếp quan sát; tài liệu hiện chưa kèm phản hồi gốc để đối chiếu từng người. Baseline số câu giảng viên hỏi lại còn thiếu, nên tốc độ tổng hợp chưa đủ để kết luận chất lượng đã cải thiện.

### 6.5. Khó khăn khi làm rõ Problem Statement

Khó khăn trong phần quy trình là giữ cùng phạm vi đo khi nhóm cập nhật quyết định. Card Phát ban đầu có phương án No AI khoảng 36 phút, nhưng CP6 đã chọn Rule dự kiến 21 phút với mục tiêu dưới 25. Sáu bước lập báo cáo cần được tách khỏi hoạt động cập nhật task trong kỳ. Tổng thời gian phải tính cả kiểm tra và sửa; hai pha Rule là 2 cộng 1 bằng 3 phút. Số commit không đủ để xác nhận một công việc đã hoàn thành.

### 6.6. Nếu làm lại

Tôi sẽ ghi thời gian từng bước ngay khi làm thay vì chỉ nhớ tổng thời gian sau đó. Trong thảo luận, tôi cần ghi nguyên câu hỏi, người hỏi và phần card được sửa để nhật ký CP3 có bằng chứng rõ. Với nhiệm vụ CP5 được giao, tôi sẽ đối chiếu cùng Phát về input, output và thời gian, rồi trao đổi với Giang để sơ đồ, metric và mức can thiệp dùng cùng giả định. Điều tôi cần phản biện kỹ hơn là phần thời gian tiết kiệm có thực sự giảm tổng công việc của cả nhóm hay chỉ chuyển việc sang thành viên khác.

### 6.7. Khung giải thích hiểu bài — bản nháp 7 câu

Bài của nhóm là giúp Phát tổng hợp công việc hai tuần của nhóm bốn người để gửi báo cáo cho giảng viên. Baseline gồm 38, 71 và 55 phút, trung bình khoảng 55 phút; bước đọc Zalo khoảng 15 phút là nghẽn hiện tại. Nhóm chọn Rule lọc và gom dữ liệu, còn con người bổ sung, viết, kiểm tra và gửi, với ước tính 21 phút và target dưới 25 phút/kỳ. Metric yêu cầu bốn kỳ liên tiếp đạt thời gian, không bỏ sót task hợp lệ, có nguồn đối chiếu và cập nhật không quá 10 phút/người/kỳ. Boundary là chỉ đọc nguồn được phép, không suy Done từ commit, không sửa dữ liệu hoặc tự gửi, và luôn kiểm tra lại sau bổ sung. Nhóm giữ No AI làm phương án quay về, chưa chọn Workflow/Agent vì chưa có bằng chứng cần AI. Quyết định là Go pilot hai kỳ với Rule, sau đó tiếp tục đủ bốn kỳ nếu đạt; dừng nếu hai kỳ đều từ 25 phút trở lên, có task hợp lệ bị bỏ sót hoặc có người tốn quá 10 phút/kỳ để cập nhật.

---

## 7. Tài liệu tham khảo

Các README dưới đây được mở đối chiếu ngày **09/11/2026**. Nguồn kỹ thuật và tự báo cáo thời gian được phân biệt để tránh coi kết quả mô hình là bằng chứng tiết kiệm thời gian.

| Nguồn | Dùng đối chiếu nội dung nào? | Giới hạn |
|---|---|---|
| [Vehicle HOG + SVM + PCA — README](https://github.com/lesongthao/vehicle-hog-svm-rbf-pca/blob/main/README.md) | 400 ảnh, 4 lớp; các mốc PCA 10/20/50/100/200; F1 Truck 0.52 và Bus 0.63. | Không có log xác nhận thời gian viết báo cáo 75–90 phút. |
| [Smart Parking — kết quả nhận diện](https://github.com/lesongthao/smart-parking-lpr-system/blob/main/README.md#results) | 200 ảnh, đúng 195/200, accuracy 97.50%, CER 1.44%, thời gian xử lý 619 ms/ảnh; dữ liệu huấn luyện 8.357 ảnh. | 619 ms là xử lý ảnh, không phải thời gian rà soát của con người. Kết quả tập đánh giá không xác nhận vận hành thực tế. |
| [ESP32 Motion Relay — README](https://github.com/lesongthao/esp32-motion-relay-blynk/blob/main/README.md) | Serial 115200 baud; 4 Virtual Pin V1–V4; alarmMode và bảng troubleshooting. | Không có log xác nhận 8–9 vòng debug/buổi hoặc 10 phút/vòng. |
| [ESP32 Smart Light — README](https://github.com/lesongthao/esp32-smart-light-blynk/blob/main/README.md) | Virtual Pin V0–V4; RTC/LDR; ghi chú GND của RTC nối vào GPIO23 trong mô phỏng. | Lỗi dây trong mô phỏng không chứng minh tất cả lỗi debug đều có cùng nguyên nhân. |
| [TEAM.md — phân công chính thức trên main](https://github.com/Ntd1411/K5-L3A-DAY02-Nhom4AE-DiscoveryProblemFraming/blob/627065150a8fb412411752b9f4530cc04e861232/TEAM.md) | Candidate đã chọn và vai trò của Lê Sông Thao. | Phân công là trách nhiệm được giao; cần sản phẩm để chứng minh hoàn thành. |
| [Card #1 của Trần Hoàng Phát](https://github.com/Ntd1411/K5-L3A-DAY02-Nhom4AE-DiscoveryProblemFraming/blob/627065150a8fb412411752b9f4530cc04e861232/report/individual/2A202603536_TranHoangPhat.md) | Baseline tự báo cáo 38/71/55 phút; mục tiêu No AI dưới 40 phút, Workflow dưới 25 phút nếu cần. | Số câu giảng viên hỏi lại còn thiếu baseline; chưa có kết quả pilot. |
| [Thiết kế quy trình CP5 của Thao, có AI hỗ trợ](../assets/cp5-lesongthao-workflow-draft.md) | Quy trình hiện tại, phương án bảng chung, before/after, boundary và cách quay về; đã tích hợp vào báo cáo nhóm. | Thời gian tương lai chưa có kết quả pilot. |
| [Góp ý metric/boundary CP6](../assets/cp6-lesongthao-metric-boundary-review.md) | Các điểm cần chủ trì PS/mức can thiệp/quyết định đối chiếu với quy trình; 5 tiêu chí đề xuất. | Là đầu vào góp ý, chưa phải kết luận CP6 đã chốt. |
| [10 ca đánh giá Rule](../assets/cp6-rule-evaluation-cases.md) | Input/đầu ra mong đợi cho biên thời gian, trạng thái, loại trùng, nguồn và quay về. | Ví dụ tổng hợp chưa chạy trên triển khai; không phải bằng chứng khảo sát hoặc kết quả pilot. |
| [Kịch bản mô phỏng CP5](../assets/cp5-simulated-progress-report.md), [task thô](../assets/cp5-simulation-input.csv), [sau đối chiếu giả định](../assets/cp5-simulation-confirmed.csv) | Một ví dụ đủ từ 13 dòng đầu vào tới 7 việc hoàn thành và báo cáo mẫu. | Tất cả dự án, task, xác nhận, bằng chứng và thời gian là mô phỏng. |
| [Biên bản CP3–CP4 từ nhánh chung](https://github.com/Ntd1411/K5-L3A-DAY02-Nhom4AE-DiscoveryProblemFraming/blob/492b7f7e35330605948cfc580506892cbf1cdd63/report/team/group_report.md) | Câu hỏi đặt/nhận ở bảng pitch, shortlist và số liệu khảo sát do nhóm tổng hợp. | Chỉ dẫn theo biên bản; chưa kèm bản phản hồi gốc để xác minh từng dòng khảo sát. |
| [CP5–CP6 của nhóm tại 53f9eb6](https://github.com/Ntd1411/K5-L3A-DAY02-Nhom4AE-DiscoveryProblemFraming/blob/53f9eb6/report/team/group_report.md) | Quyết định Rule, PS v0/v1, pilot 2 → 4 kỳ và target dưới 25 phút. | Các mốc thời gian tương lai là ước tính, chưa phải kết quả pilot. |
| [Rubric](../../RUBRIC.md), [Rules](../../RULES.md), [báo cáo nhóm](../team/group_report.md) | Điều kiện C1–C5 và nơi đối chiếu phần tham gia nhóm. | Báo cáo chung có CP3–CP6; phản hồi khảo sát gốc và reflection cá nhân còn cần bổ sung. |

Các mốc thời gian thao tác và tần suất ở CP1–CP2 còn cần được cá nhân đối chiếu với ghi chép gốc. Tài liệu Day-01 đang được nhắc theo trải nghiệm cá nhân, chưa kèm link bài nộp trong bản này.
