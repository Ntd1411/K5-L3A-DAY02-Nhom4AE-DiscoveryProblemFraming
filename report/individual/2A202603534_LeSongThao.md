# Báo cáo cá nhân — 2A202603534_LeSongThao

> **Trạng thái: Bản cập nhật đến CP2.** Nhóm đang tập hợp báo cáo cá nhân để so sánh các Problem Card; **chưa chốt card/bài toán chung**.
> Thứ tự ưu tiên, card muốn pitch và cảm nhận về mức can thiệp dưới đây là đề xuất cá nhân để thảo luận ở CP3.
> Hướng dẫn và template: [docs/01-worksheet.md](../../docs/01-worksheet.md).

## 1. Thông tin học viên

- Họ tên: Lê Sông Thao
- MSSV: 2A202603534
- Email trường (không bắt buộc, repo có thể để public): songthao2412@gmail.com
- Tên nhóm: Nhom4AE
- Link repo nhóm: https://github.com/Ntd1411/K5-L3A-DAY02-Nhom4AE-DiscoveryProblemFraming

---

## 2. Scan problem (CP1)

Lăng kính: **Lặp lại** · **Tốn thời gian** · **Cần đọc, tổng hợp nhiều thông tin** · **Pain từ người khác**.

| # | Lăng kính | Job Story: Khi… tôi muốn… để… | Ai chịu ảnh hưởng? | Dấu hiệu thật (thời gian, tần suất, số người, bằng chứng) |
|---:|---|---|---|---|
| 1 | Tốn thời gian | Khi chạy xong nhiều cấu hình thử nghiệm mô hình trên Jupyter Notebook (như 5 mốc PCA hoặc 4 hướng xử lý văn bản ở bài lab), tôi muốn gom toàn bộ bảng chỉ số, ma trận nhầm lẫn và các mẫu dự đoán sai về một chỗ rồi rút ra nhận định so sánh, để hoàn thành báo cáo đánh giá trước giờ nộp mà không bị sót trường hợp lỗi. | Học viên kỹ thuật, sinh viên làm đồ án/lab học máy (cá nhân tôi và các bạn cùng lớp K5-L3A) | Mất 75–90 phút (trung bình ước lượng hồi tưởng ~80 phút/bài) cho mỗi bài thực nghiệm khi làm repo `vehicle-hog-svm-rbf-pca` (baseline + 5 cấu hình PCA `10, 20, 50, 100, 200` trên 400 ảnh) và bài lab `Day-01` (4 nhánh thử nghiệm); trung bình 1–2 lần/tuần. |
| 2 | Cần đọc, tổng hợp nhiều thông tin | Khi kiểm tra kết quả nhận diện biển số trên tập 200 ảnh thực nghiệm, tôi muốn đối chiếu nhanh ảnh gốc, ảnh qua 3 bước tiền xử lý (gốc, CLAHE, Otsu) và chuỗi ký tự đầu ra bị sai vị trí, để tìm đúng quy luật nhầm ký tự và cập nhật hàm hậu xử lý. | Người phát triển hệ thống thị giác máy tính (cá nhân tôi khi làm đồ án `smart-parking-lpr-system`) | Mở từng ảnh và đối chiếu file kết quả trong thư mục `ket_qua_danh_gia_200/` mất ~55 phút/lần mỗi khi chỉnh sửa luật hậu xử lý; đã lặp lại 4 đợt lớn trong quá trình làm đồ án tốt nghiệp. |
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

Đây là top 3 của cá nhân tôi để đưa ra so sánh với các card của những thành viên khác; chưa phải shortlist hay quyết định của nhóm.

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
| Success metric (baseline → target) | Giảm tổng thời gian tổng hợp và viết báo cáo thực nghiệm từ **~80 phút/bài** (baseline ước lượng hồi tưởng từ 6 bước `10'+15'+10'+10'+25'+10'` khi làm báo cáo `vehicle-hog-svm-rbf-pca` và `Day-01`) xuống **dưới 30 phút/bài**, đồng thời **0 lỗi lệch số liệu** giữa bảng kết quả và đoạn phân tích. |
| Phương án không dùng AI | Viết sẵn một hàm Python cuối Notebook tự động xuất toàn bộ metrics (`classification_report`, độ lệch `delta`, thời gian chạy, top mẫu sai) ra đúng định dạng bảng Markdown + dùng khung câu hỏi mẫu (template) cho phần nhận định. Cách này giảm mạnh thời gian copy số liệu nhưng người làm vẫn phải tự đọc các mẫu sai để viết phần giải thích và nhận định. |
| Giả thuyết về AI (nếu có) | Sau khi script Python đã gom bảng metrics chuẩn (kèm số dẫn xuất) và danh sách 5–10 mẫu dự đoán sai tiêu biểu, dùng AI để soạn bản nháp phần nhận định so sánh (chỉ ra sự đánh đổi và gợi ý giả thuyết nguyên nhân sai từ dữ liệu đầu vào); học viên kiểm tra lại và chỉnh sửa trước khi đưa vào báo cáo. |
| Cảm nhận nhanh | Workflow (Rule/Script xuất bảng số liệu chính xác + AI hỗ trợ soạn nháp nhận định từ dữ liệu đã gom + Con người kiểm duyệt) |

Quy trình nháp hiện tại:

```text
HIỆN TẠI — 80 phút/bài thực nghiệm (10' + 15' + 10' + 10' + 25' + 10')

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
| Job Story | Khi kiểm tra kết quả nhận diện biển số trên tập 200 ảnh thực nghiệm, tôi muốn đối chiếu nhanh ảnh gốc, ảnh qua 3 bước tiền xử lý (gốc, CLAHE, Otsu) và chuỗi ký tự đầu ra bị sai vị trí, để tìm đúng quy luật nhầm ký tự và cập nhật hàm hậu xử lý. |
| Actor | Sinh viên / kỹ sư phát triển pipeline Nhận diện biển số xe (OCR & Computer Vision) trong dự án `smart-parking-lpr-system`. |
| Thời điểm / bối cảnh | Sau mỗi lần chạy đánh giá tập kiểm thử 200 ảnh biển số Việt Nam hoặc khi phát hiện biển số thực tế tại cổng bãi xe bị đọc sai ký tự. |
| Quy trình hiện tại (3–7 bước) | 1. Chạy script đánh giá trên 200 ảnh đã gán nhãn để xuất file kết quả (3') · 2. Lọc ra các ảnh có kết quả dự đoán khác nhãn thật (`5/200` ảnh sai toàn biển hoặc các trường hợp CER > 0) (5') · 3. Mở từng ảnh gốc và 3 ảnh biến thể (`original`, `CLAHE`, `Otsu`) lên xem bằng mắt (15') · 4. Đối chiếu chuỗi ký tự PaddleOCR đọc được trên từng biến thể với định dạng biển số Việt Nam theo vị trí ký tự (15') · 5. Ghi chú quy luật nhầm (ví dụ `8` ↔ `B`, `0` ↔ `D`, mất dấu gạch) và sửa hàm hậu xử lý trong `nhan_dien_bien_so.py` (12') · 6. Chạy kiểm tra lại để đảm bảo không lỗi hồi quy (5'). |
| Bottleneck (bước nào, mất bao nhiêu phút) | **Bước 3 & 4 — Mở từng cụm ảnh biến thể và đối chiếu thủ công chuỗi ký tự OCR + độ tự tin (confidence) theo từng vị trí ký tự: mất 30 phút/lần rà soát** (`15' + 15'`, trên tổng 55 phút/vòng). |
| Impact (nếu không giải thì sao) | Mỗi vòng tinh chỉnh luật hậu xử lý mất ~55 phút; dễ sửa được lỗi ở ảnh này nhưng lại làm hỏng kết quả của ảnh khác đã đúng trước đó (regression) nếu không đối chiếu hết các biến thể. |
| Success metric (baseline → target) | Giảm thời gian phân tích lỗi sau mỗi lần chạy đánh giá 200 ảnh từ **55 phút/lần** xuống **dưới 15 phút/lần**, giữ độ chính xác toàn biển `>= 97.50%` và không phát sinh ca sai mới trên tập đã đúng. |
| Phương án không dùng AI | Viết script Python tự động ghép ảnh gốc + 3 biến thể `original/CLAHE/Otsu` + chuỗi OCR từng biến thể vào chung 1 ảnh tổng hợp (visual error sheet) chỉ cho những ca dự đoán sai, kèm bảng thống kê cặp ký tự hay nhầm nhất (`confusion pairs`). |
| Giả thuyết về AI (nếu có) | Với bài toán đã có nhãn chuẩn và cấu trúc biển số Việt Nam cố định theo vị trí, script thống kê + luật (Rule) đã giải quyết được phần lớn; AI chỉ hữu ích nếu cần phân loại tự động điều kiện gây lỗi của ảnh (mờ chuyển động, chói sáng, góc nghiêng, bẩn biển số) để gợi ý hướng thu thập thêm dữ liệu. |
| Cảm nhận nhanh | Rule (hoặc Workflow nhẹ nếu cần phân nhóm điều kiện ảnh lỗi) |

Quy trình nháp hiện tại:

```text
HIỆN TẠI — 55 phút/vòng đánh giá 200 ảnh (3' + 5' + 15' + 15' + 12' + 5')

[1. Chạy đánh giá 200 ảnh (~619ms/ảnh): 3']
  → [2. Lọc danh sách các ca sai lệch so với nhãn thật: 5']
  → [3. Mở từng ảnh gốc + 3 biến thể (gốc/CLAHE/Otsu): 15']     ← BOTTLENECK (kết hợp Bước 4 = 30')
  → [4. So chuỗi OCR & confidence theo vị trí ký tự: 15']       ← BOTTLENECK
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
| Bottleneck (bước nào, mất bao nhiêu phút) | **Bước 2 & 4 — Đọc dòng log Serial tự do (unstructured text) đang trôi nhanh (3') và dò chéo thủ công với bảng chân GPIO / Virtual Pin trong code và `diagram.json` (4'): mất 7 phút trên tổng 10 phút của mỗi vòng dò lỗi** (lặp lại 8–9 lần mỗi buổi làm mạch = 80–90 phút/buổi). |
| Impact (nếu không giải thì sao) | Mất 80–90 phút mỗi buổi chỉ để tìm những lỗi cấu hình nhỏ (như relay kích mức thấp `LOW` thay vì `HIGH`, quên bật `alarmMode` ở `V3`, hoặc nối nhầm chân `GND` của RTC sang `GPIO23`). |
| Success metric (baseline → target) | Giảm thời gian khoanh vùng 1 lỗi cấu hình/logic từ trung bình **10 phút/vòng** (trong đó 7 phút ở Bước 2 & 4) xuống **dưới 3 phút/vòng**; giảm số lần nạp-thử lặp lại trong một buổi từ 8–9 lần xuống dưới 4 lần. |
| Phương án không dùng AI | Chuẩn hóa định dạng in log Serial theo bảng trạng thái cố định mỗi khi có sự kiện (`[TIME] [GPIO] [VIRTUAL_PIN] [MODE] [STATE]`) + tạo bảng checklist kiểm tra nhanh 5 lỗi phổ biến (như bảng Troubleshooting tôi đã lập trong `README.md` của 2 repo ESP32). |
| Giả thuyết về AI (nếu có) | Đưa đoạn log Serial bất thường + file `diagram.json` + đoạn code cấu hình pin cho công cụ phân tích để chỉ ra ngay điểm mâu thuẫn giữa sơ đồ nối dây và code điều khiển. |
| Cảm nhận nhanh | No AI hoặc Rule (Checklist + chuẩn hóa log Serial giải quyết được hầu hết; chỉ cần AI khi kiểm tra chéo tự động giữa `diagram.json` và file `.ino`). |

Quy trình nháp hiện tại:

```text
HIỆN TẠI — 10 phút/vòng dò lỗi (1' + 3' + 1' + 4' + 1') × 8–9 lần/buổi = 80–90 phút/buổi

[1. Kích hoạt cảm biến/nút nhấn trên mạch/Wokwi: 1']
  → [2. Đọc log Serial Monitor 115200 baud đang trôi: 3']      ← BOTTLENECK (kết hợp Bước 4 = 7')
  → [3. Kiểm tra trạng thái V0-V4 trên Blynk Dashboard: 1']
  → [4. Dò chéo GPIO trong code .ino và diagram.json: 4']      ← BOTTLENECK
  → [5. Sửa dây/code và biên dịch nạp lại: 1']
```

### Card muốn pitch nhất (ưu tiên cá nhân)

- Card số: **Card #1** (*Tổng hợp kết quả từ nhiều lần chạy thử nghiệm mô hình/notebook và viết nhận định phân tích lỗi cho báo cáo*).
- Vì sao:
  1. Đây là vấn đề xuất phát từ trải nghiệm thực tế của cá nhân tôi (khi làm báo cáo thực nghiệm cho `vehicle-hog-svm-rbf-pca`, `smart-parking-lpr-system` và bài lab `Day-01`), có thể cũng xuất hiện ở các bạn làm thực nghiệm tương tự. **Mức độ phổ biến ngoài trải nghiệm của tôi chưa được kiểm chứng**.
  2. Quy trình có ranh giới rất rõ giữa phần **không nên dùng AI** (lấy số liệu metrics chính xác và tính sẵn độ lệch từ code — phải dùng Rule/Script để không bịa số) và phần **có thể thử AI hỗ trợ** (soạn nháp nhận định so sánh và gợi ý giả thuyết lỗi từ danh sách mẫu sai để con người kiểm duyệt).
  3. Rất thuận lợi để nhóm kiểm chứng trực tiếp tại lớp ở CP4 bằng cả phỏng vấn nhanh (The Mom Test) lẫn khảo sát nhanh các học viên nhóm khác.
- Câu hỏi muốn nhóm phản biện:
  > *"Nếu chúng ta viết sẵn một đoạn script Python ở cuối Notebook để tự xuất bảng Markdown các chỉ số (Accuracy, Precision, Recall, F1, thời gian chạy) cùng danh sách mẫu sai, thì phần việc còn lại (đọc mẫu sai và viết nhận định so sánh) có thực sự còn đủ nặng để cần tới một Workflow có AI hỗ trợ không, hay chỉ cần một khung câu hỏi mẫu (template No AI) là đủ?"*

### AI đã phản biện card thế nào

Tôi đã đưa cả 3 Problem Cards vào prompt đóng vai **"Product Manager hoài nghi"** (theo mẫu trong `docs/01-worksheet.md`) và nhận được các phản biện sau:

| Điểm yếu AI chỉ ra | Đồng ý? | Đã sửa gì |
|---|---|---|
| **Ở Card #1:** Ban đầu tôi gộp chung "gom số liệu từ các cell và viết nhận định" thành 1 bước nghẽn 50 phút. AI chỉ ra đây là 2 bản chất khác nhau: gom số liệu là việc cơ học (Rule/script giải được ngay), còn viết nhận định & phân tích mẫu sai mới là việc cần tư duy tổng hợp. | Đồng ý hoàn toàn | Tách rõ quy trình Card #1 thành **Bước 2** (copy số liệu: 15'), **Bước 4** (đối chiếu tham số với mẫu sai: 10') và **Bước 5** (viết nhận định so sánh & phân tích lỗi: 25' — đánh dấu là Bottleneck chính). Đồng thời cập nhật "Phương án không dùng AI" là dùng script xuất bảng Markdown trước. |
| **Ở Card #1:** Metric ban đầu tôi chỉ viết "giảm thời gian từ 80 phút xuống 30 phút". AI phản biện: nếu làm nhanh hơn mà copy sai số hoặc nhận định hời hợt thì báo cáo vẫn mất điểm. | Đồng ý | Bổ sung điều kiện chất lượng vào **Success metric**: *"đồng thời 0 lỗi lệch số liệu giữa bảng kết quả và đoạn phân tích"*. |
| **Ở Card #3:** Ban đầu tôi đặt cảm nhận nhanh là "Workflow (AI đọc log Serial)". AI phản biện rằng log do chính mình lập trình trong file `.ino`, tại sao không sửa hàm `Serial.println()` cho có cấu trúc rõ ràng ngay từ đầu mà lại dùng AI đi đọc log lộn xộn? | Đồng ý | Đổi cảm nhận nhanh của Card #3 về **No AI hoặc Rule** (chuẩn hóa định dạng in log Serial + bảng checklist 5 lỗi phổ biến), giúp tôi không rơi vào bẫy "AI-first" cho bài toán phần cứng cơ bản. |

---

## 4. Tôi đã tham gia phần nào (CP3 → CP7)

Nhóm đang tập hợp các Problem Card ở CP2 để so sánh, chưa chốt candidate chung. Mục này sẽ được cập nhật bằng các hoạt động và phản biện thực tế khi nhóm thực hiện CP3–CP6.

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

Bảng hiện ghi các lần dùng AI ở CP1–CP2. Các hoạt động sau CP2 sẽ được bổ sung khi thực sự diễn ra.

| Checkpoint | Tôi dùng AI để làm gì? | AI hữu ích ở đâu? | AI sai hoặc hời hợt ở đâu? | Tôi sửa gì bằng nhận định của mình? |
|---|---|---|---|---|
| **CP1 Scan** | Sau khi tự liệt kê 8 vấn đề từ các dự án GitHub cá nhân (`smart-parking-lpr-system`, `vehicle-hog-svm-rbf-pca`, 2 dự án `ESP32 Blynk` và lab `Day-01`), tôi hỏi AI gợi ý thêm góc nhìn theo 4 lăng kính cho sinh viên mới tốt nghiệp ngành Điện tử - Tin học công nghiệp. | Gợi ý thêm góc nhìn về phối hợp làm lab nhóm trên Git trong thời gian ngắn (#9) và rà soát JD ứng tuyển Fresher Embedded/CV (#10). | Đưa ra 2 gợi ý mang tính "solution trá hình" và viễn tưởng: *"AI tự chẩn đoán lỗi mạch điện từ ảnh chụp breadboard"* và *"trợ lý tự làm bài tập"*. | Loại bỏ hoàn toàn 2 ý viễn tưởng/solution trá hình; viết lại ý #9 và #10 theo đúng cấu trúc Job Story không chứa từ khóa giải pháp và gắn số phút thực tế của bản thân. |
| **CP2 Problem Card** | Dùng prompt "Product Manager hoài nghi" để phản biện 3 Problem Cards của tôi. | Chỉ ra rất trúng việc tôi đang gộp bước "copy bảng chỉ số" và bước "viết nhận định phân tích lỗi" ở Card #1, và chỉ ra Card #3 có thể giải quyết bằng việc sửa câu lệnh `Serial.println()` thay vì dùng AI. | Khi phản biện Card #2 (nhận diện biển số), AI khuyên thay toàn bộ pipeline YOLOv8n + PaddleOCR bằng một mô hình VLM lớn chạy trên cloud mà không tính đến độ trễ nhận diện cục bộ (`619 ms/ảnh`) và yêu cầu chạy offline ở cổng bãi xe. | Giữ nguyên kiến trúc cục bộ ở Card #2, chỉ tập trung vào bài toán công cụ hỗ trợ rà soát tập ảnh lỗi trong giai đoạn phát triển; tách bạch bước Rule (script xuất bảng) và bước AI (nháp nhận định) ở Card #1. |

---

## 6. Reflection (CP7)

Chưa điền ở bản CP2. Sau khi hoàn tất phần nhóm, tôi sẽ tự viết reflection bằng trải nghiệm thực tế của mình, tối thiểu 200 từ cho các câu 6.1–6.6; mục 6.7 được trả lời riêng bằng 5–8 câu.

**6.1. Tôi học được gì khi nghe top 3 problems của các bạn khác?**

**6.2. Nhóm có lúc nào bị "solution-first" (nghĩ giải pháp trước khi hiểu vấn đề) không? Lúc đó nhóm nhận ra và xử lý thế nào?**

**6.3. Tôi có đổi ý sau khi bị phản biện không? Kể một lần cụ thể.**

**6.4. Kết quả kiểm chứng (phỏng vấn/survey/research) có làm tôi bất ngờ không? Điều gì?**

**6.5. Điều khó nhất khi viết Problem Statement là gì?**

**6.6. Nếu làm lại, tôi sẽ đổi gì? Tôi sẽ phản biện nhóm mạnh hơn ở điểm nào?**

**6.7. Hiểu bài:** giải thích bằng 5–8 câu, không nhìn tài liệu, chuỗi *problem → quy trình → metric → boundary → mức can thiệp AI → quyết định* của bài nhóm mình.

---

## 7. Tài liệu tham khảo

Nguồn tham khảo cho bối cảnh và kết quả kỹ thuật trong CP1–CP2:

- `smart-parking-lpr-system`: https://github.com/lesongthao/smart-parking-lpr-system
- `vehicle-hog-svm-rbf-pca`: https://github.com/lesongthao/vehicle-hog-svm-rbf-pca
- `esp32-motion-relay-blynk`: https://github.com/lesongthao/esp32-motion-relay-blynk
- `esp32-smart-light-blynk`: https://github.com/lesongthao/esp32-smart-light-blynk
