# CP7 — Rà soát bài nộp ngày 09/11/2026

Đối chiếu [RUBRIC](../../RUBRIC.md), [SUBMISSION](../../SUBMISSION.md), [TEAM](../../TEAM.md), báo cáo nhóm và cả bốn báo cáo cá nhân trên `main`. Mốc trước đợt rà soát: `cbc4ca8`. Bảng này ghi tình trạng tài liệu, không tự chấm điểm thay coach.

## 1. Phần chung

| Tiêu chí | Nội dung hiện có | Sửa trong đợt rà soát / việc còn lại |
|---|---|---|
| C6 — Hội tụ, 8 điểm | 12 candidate, 3 cluster, OST, shortlist 35/33/31, lý do loại hai card | Làm rõ điểm là so sánh CP3, không phải mức xác thực; nối nhánh đã chọn với outcome đo được |
| C7 — Kiểm chứng/research, 10 điểm | Assumption map, câu hỏi hành vi, 10 phiếu thực tế (9 hợp lệ, 1 loại P03), tín hiệu phản bác P05 và ba nhóm nguồn research | Đã bổ sung dữ liệu gốc ẩn danh tại `report/assets/cp4-survey-responses.csv` và bảng tổng hợp `cp4-survey-summary.md` qua công cụ ngoại tuyến; đối chiếu đầy đủ tỷ lệ mất thời gian (66,7%) và tín hiệu phản bác (11,1%) |
| C8 — Quy trình, 12 điểm | Hai sơ đồ, actor/input/output, số phút, before/after, bước duyệt và quay về | Bổ sung quy ước kỳ, xử lý mục thiếu sau bổ sung, cách tính chờ và công sức cả nhóm; tách ví dụ thiết kế khỏi bằng chứng CP5 |
| C9 — PS/tiêu chí, 15 điểm | v0 sáu trường, v1 chín trường, delta và năm tiêu chí Rule | Tách quy trình tương lai khỏi mô tả vấn đề; thêm tập việc đối chiếu độc lập, cách ghi lỗi trước sửa và hai mẫu ghi nhận |
| C10 — Mức can thiệp, 8 điểm | Ma trận, so sánh bốn mức, chọn Rule, AI intervention point = Không có | Chưa có phép đo chứng minh No AI không đủ. Đã thêm so sánh cùng dữ liệu và điều kiện ưu tiên No AI nếu đủ tốt |
| C11 — Quyết định, 7 điểm | Bốn rủi ro, Go pilot hai kỳ rồi bốn kỳ, ngưỡng dừng | Làm rõ việc trước pilot, mức rủi ro còn chưa kiểm chứng, dừng ngay khi vi phạm quyền và xử lý khi chỉ một kỳ chưa đạt |

Phần thiết kế đã đủ các mục để tiếp tục kiểm chứng. Chưa có kết quả pilot không đồng nghĩa phải tạo kết quả cho bài lab: đề yêu cầu discovery, Problem Statement và quyết định có lý do. Bằng chứng kiểm chứng CP4 vẫn là phần riêng cần hoàn tất.

## 2. Phần cá nhân và việc cần từng người xử lý

| Thành viên | Tình trạng trên main | Việc cần làm |
|---|---|---|
| **Lê Sông Thao** | 10 scan, 3 card/quy trình, nhật ký phản biện dẫn biên bản, AI log, sản phẩm CP5 và hỗ trợ CP6; đã hoàn tất reflection | Đã tự hoàn thiện mục 6 (6.1–6.6 đạt trên 200 từ) và chuỗi 6 mắt xích logic 6.7; sẵn sàng vấn đáp trực tiếp với Coach |
| **Trần Hoàng Phát** | CP1–CP2 đã điền; TEAM đã tổng hợp đóng góp theo Git/biên bản; mục 4–6 cá nhân còn trống | Kiểm tra ghi nhận TEAM, tự bổ sung điều học được; hoàn tất C3, nhật ký AI và reflection; cung cấp nguồn khảo sát/kênh/ngày thu; làm rõ baseline câu hỏi lại. Card CP2 có thể giữ đề xuất ban đầu, nhật ký giải thích quá trình chốt Rule |
| **Nguyễn Huy Giang** | 10 scan, 3 card; đã đồng bộ số liệu Card #2 (45 phút) và cách đo Card #1; mục 4–5 đã điền đầy đủ nhật ký phản biện/AI; mục 6 reflection đã hoàn tất (>200 từ/câu, 6.7 đủ 6 mắt xích logic) và đã cập nhật TEAM.md | Đã hoàn thiện toàn bộ theo yêu cầu rubric và review nhóm; sẵn sàng vấn đáp với Coach |
| **Nguyễn Tuấn Dũng** | 10 scan, 3 card; đã sửa tiêu đề, điền nhật ký tham gia C3 và bảng dùng AI; Card #3 đã đồng bộ baseline hồi tưởng 10 phút/form; mục 6 còn trống | Tự viết Reflection 6.1–6.6 tối thiểu 200 từ và 6.7 bằng 5–8 câu; bổ sung số đo thật cho scan #9 nếu có; kiểm tra nội dung được tổng hợp trong mục 4–5 và tự ghi “Điều mình học được” ở `TEAM.md` trước khi nộp |

Những mâu thuẫn trong báo cáo của người khác được ghi để tác giả xác nhận, không tự chọn một con số thay trải nghiệm của họ. Các mục cá nhân chưa có nội dung không thể suy ra chỉ từ số commit.

## 3. Các điểm cần chốt trước khi nộp

1. **Phát — CP4:** Đã có 10 phản hồi ẩn danh (P01–P10) tại `cp4-survey-responses.csv` và `cp4-survey-summary.md` với đầy đủ vai trò ngoài nhóm, thời điểm/kênh, lý do loại P03 và tín hiệu phản bác P05; nhóm đã đối chiếu tỷ lệ và cập nhật mục 3.2 báo cáo nhóm.
2. **Mỗi người — CP7/TEAM:** tự ghi đóng góp có đường dẫn sản phẩm; trả lời 6.1–6.6 ít nhất 200 từ, 6.7 bằng 5–8 câu và tự giải thích được. Đọc lại nhật ký AI theo việc thực sự đã dùng.
3. **Dũng — đồng bộ:** giữ đủ bốn báo cáo trên main; kiểm tra các thay đổi mới trước khi merge. Nhánh Phát có commit `26348f9` xóa báo cáo Giang; không áp dụng việc xóa này lên bản nộp chung.
4. **Từng người — LMS:** nộp cùng link repo nhóm bằng tài khoản của mình, kiểm tra deadline/gia hạn trong LMS. Trạng thái GitHub không xác nhận việc đã nộp LMS.
5. **Dũng — tên repo:** `git remote -v` ngày 09/11/2026 đang trỏ tới `K5-L3-Day02-Nhom4AE-DiscoveryProblemFraming`, không khớp mẫu `K5-L3A-DAY02-Nhom4AE-DiscoveryProblemFraming` được ghi trong báo cáo. Cần kiểm tra repo thực tế trên GitHub và đổi tên trước hạn nếu đây không chỉ là remote cũ; sai tên repo bị trừ 5 điểm theo rubric.

## 4. Bonus và cấu trúc

- B1: Thao/Phát/Dũng/Giang đều có 10 dòng scan trải đủ bốn lăng kính với dấu hiệu đo lường thật.
- B2: số lượng khảo sát đang ghi là 8, chưa đạt mốc 20 survey; không khai đủ bonus từ bảng hiện tại.
- B3: mười ca của giải pháp Rule hỗ trợ kiểm tra thiết kế, không phải eval cho bước AI.
- Có đủ bốn file cá nhân, `TEAM.md`, `report/team/group_report.md`; template cá nhân rỗng đã được bỏ. Tên bốn file cá nhân phù hợp mẫu; tên repo ở remote hiện chưa khớp mẫu và cần xử lý theo mục 3.5.
- Đề bài, rubric và tài liệu hướng dẫn được giữ nguyên. Không sửa yêu cầu chấm để làm báo cáo trông như đã đủ.
