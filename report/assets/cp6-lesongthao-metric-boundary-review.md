# CP6 — Đối chiếu metric và boundary theo mức Rule

- Phần hỗ trợ của Lê Sông Thao theo phân công trong TEAM.md (cập nhật ngày 09/11/2026).
- Nguồn quyết định: [CP5–CP6 của nhóm tại 53f9eb6](https://github.com/Ntd1411/K5-L3A-DAY02-Nhom4AE-DiscoveryProblemFraming/blob/53f9eb6/report/team/group_report.md). Nhóm đã chọn **Go — pilot phạm vi nhỏ với Rule**.
- Đối chiếu với [quy trình CP5](cp5-lesongthao-workflow-draft.md) và [báo cáo nhóm](../team/group_report.md). Vai trò tài liệu này là rà soát tính nhất quán, không nhận thay phần chủ trì viết PS/quyết định của Dũng/Giang/Phát.

## 1. Metric và cách chấm đạt

| Điểm kiểm tra | Nội dung thống nhất | Giới hạn / cách đo |
|---|---|---|
| Baseline | 38/71/55 phút; trung bình 54,67, làm tròn khoảng 55 | Ba kỳ tự báo cáo của Phát, chưa có log gốc từng bước. |
| Phương án chính | Rule dự kiến 21 phút: 2 + 5 + 1 + 8 + 3 + 2 | 6 bước lập báo cáo: 2 Rule, 4 con người; cập nhật trong kỳ là hoạt động riêng. |
| Target thời gian | Dưới 25 phút/kỳ trong 4 kỳ liên tiếp | Một kỳ đúng 25 phút vẫn chưa đạt; không chỉ dùng trung bình để che kỳ vượt ngưỡng. |
| Hai pha Rule | Lọc 2 phút + gom 1 phút = tổng dự kiến 3 phút | Đã sửa tiêu chí tổng Rule dưới 2 phút vì không khớp sơ đồ; tính cả hai pha. |
| Công sức cập nhật | Không quá 10 phút/người/kỳ | Ghi riêng cho cả 4 người; không đếm trùng phần tổng hợp của Phát. |
| Đầy đủ / đúng nguồn | 0 mục hợp lệ bị bỏ sót; 100% có link nguồn | Đối chiếu tập task đủ điều kiện với kết quả sau loại trùng; không suy Done từ Closed/Merged/commit. |
| Chất lượng bổ sung | Ghi mục sai, bỏ sót, phải hỏi/sửa và câu hỏi lại của giảng viên | Baseline số câu hỏi lại còn thiếu; không điền 0 thay dữ liệu chưa có. |

Chi tiết cách đo ở [kế hoạch pilot](cp6-pilot-measurement-plan.md): target thời gian bao gồm chờ cần thiết, còn tổng công sức chỉ cộng thời gian thao tác; không dùng chúng thay thế nhau. Tập task để phát hiện bỏ sót được con người lập độc lập với đầu ra Rule. Ghi lỗi bản nháp trước khi sửa và kiểm tra lại bản cuối.

## 2. Phân biệt ba phương án

- **No AI:** phương án card gốc ước tính khoảng 36 phút, target dưới 40; giữ làm đối chiếu và phương án quay về thủ công. Chưa có pilot chứng minh mọi cách No AI đều không thể đạt 25 phút.
- **Rule:** mức nhóm đã chọn; lọc/gom theo logic, giữ judgment và hành động gửi ở Phát. 21 phút là ước tính, target dưới 25 cần pilot kiểm chứng.
- **Workflow/Agent:** chưa chọn. Nếu Rule không đạt, phải xem time log để biết nguyên nhân nằm ở dữ liệu thiếu hay viết narrative; AI không tự giải việc thành viên không cập nhật.

So sánh No AI/Rule phải cùng dữ liệu, phạm vi và checklist. Nếu thủ công đã đạt dưới 25 phút, đủ/đúng nguồn và tổng công sức không cao hơn Rule thì ưu tiên thủ công. Phép so sánh này chưa được thực hiện; không dùng 36/21 phút dự kiến làm bằng chứng Rule đã tốt hơn.

AI intervention point của PS v1 là **Không có**. Các ô AI Canvas/PAIR được ghi không áp dụng theo rubric cho giải pháp Rule; vẫn có tiêu chí đầu ra và đủ bốn rủi ro.

## 3. Rà soát 5 tiêu chí của nhóm với CP5

| Tiêu chí | Điểm cần giữ trong kiểm tra |
|---|---|
| Đầy đủ | So tập mục hợp lệ trong kỳ sau khi loại trùng theo mã task; không lấy tổng số PR làm số việc hoàn thành. |
| Chính xác | Đúng owner, trạng thái được xác nhận, hạng mục và ngày hoàn thành; nội dung ngoài GitHub cần người liên quan xác nhận. |
| Truy vết | Mỗi mục có nguồn đối chiếu; ghi rõ điểm chưa xác nhận thay vì tự hoàn thiện bằng suy đoán. |
| Hiệu quả | Dưới 25 phút gồm bổ sung, viết, kiểm tra và gửi; Rule tổng không quá 3 phút theo thiết kế. |
| An toàn | Chỉ đọc nguồn được phép; không sửa dữ liệu, đọc chat riêng tư hoặc tự gửi. Khi lỗi dùng export/template thủ công và vẫn kiểm tra. |

## 4. Pilot, ngưỡng dừng và dữ liệu còn thiếu

Nhóm chọn thử 2 kỳ, tiếp tục đủ 4 kỳ liên tiếp nếu đạt. Hai và bốn kỳ tương ứng khoảng 4 và 8 tuần với nhịp báo cáo hai tuần; chưa phải kết quả đã thực hiện trong lab.

Ngưỡng dừng trong báo cáo nhóm đã được làm rõ: sau hai kỳ, nếu cả hai đều từ 25 phút trở lên, có ít nhất một task hợp lệ bị bỏ sót hoặc có thành viên cập nhật quá 10 phút/kỳ, dừng Rule và quay về task board + template thủ công. Ghi nguyên nhân trước khi tăng mức can thiệp.

Vi phạm quyền đọc, sửa dữ liệu gốc hoặc tự gửi thì dừng ngay. Hai kỳ đầu đều đạt đủ tiêu chí mới tiếp tục tới bốn kỳ; một kỳ trượt vẫn là chưa đạt, cần sửa nguyên nhân trước vòng tiếp theo. Thay đổi đáng kể thiết kế/cách đo thì bắt đầu lại chuỗi đo. Trước pilot phải chốt quyền dữ liệu, yêu cầu người nhận và khả năng đọc/export; việc chuẩn bị này chưa được đánh dấu hoàn thành.

Cần tiếp tục bổ sung: log baseline gốc, phản hồi khảo sát đã ẩn danh/thời điểm thu thập, log chạy pilot và tổng công sức cả nhóm. Tài liệu tổng hợp khảo sát hiện có không thay thế việc đối chiếu dữ liệu gốc.
