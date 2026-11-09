# Giao diện nhập kết quả khảo sát CP4

Mở `index.html` bằng Microsoft Edge, Chrome hoặc Firefox: chuột phải file trong Explorer → **Open with**, hoặc kéo file vào trình duyệt. Không cần cài thư viện, chạy server hoặc đăng nhập.

1. Nhập mã phiếu, vai trò, ngày/kênh khảo sát và nguồn ghi chép đã ẩn danh.
2. Điền Q1–Q7 theo [bộ câu hỏi](../../report/assets/cp4-micro-survey.md); bấm **Lưu phiếu & nhập tiếp**. Ngày/kênh được giữ cho phiếu kế tiếp; đổi nếu khác đợt.

   Mỗi câu có mục **Gợi ý hỏi tiếp** bấm mở được, kèm cách ghi và ví dụ tham khảo. Ô vai trò có danh sách gợi ý khi gõ; ô nguồn ghi chép có hướng dẫn riêng. Hỏi để người trả lời kể trước rồi chọn phương án tương ứng; các ví dụ không tự điền vào dữ liệu và không được xuất như phản hồi.
3. Dùng **Sửa** hoặc **Xóa** trong danh sách để đối chiếu. Phiếu chưa đủ dữ liệu vẫn lưu được và ghi lý do chưa tính.
4. Bấm **Xuất bản sao JSON** để sao lưu hoặc chuyển máy. **Nhập bản sao JSON** thay toàn bộ danh sách sau khi xác nhận.
5. **Xuất CSV** tạo `cp4-survey-responses.csv`; **Xuất bảng CP4** tạo `cp4-survey-summary.md`. Chuyển hai file từ Downloads vào `report/assets/`, đọc lại câu trả lời mở rồi cập nhật mục 3.2 báo cáo nhóm theo số liệu mới.

Phiếu hợp lệ phải thuộc người ngoài Nhom4AE, có ít nhất một lần làm báo cáo trong ba tháng gần nhất, đủ Q2–Q7 và không bị loại thủ công. Phiếu Q1 = 0 vẫn được lưu nhưng không tính tỷ lệ. Tỷ lệ dùng số phiếu hợp lệ làm mẫu số; Q3 chọn nhiều nên tổng tỷ lệ có thể vượt 100%. Q5 ghi thiếu việc **hoặc** hỏi lại, không phải tỷ lệ báo cáo sai.

Dữ liệu và nội dung đang nhập được lưu bằng localStorage trên đúng trình duyệt/máy này; chế độ riêng tư, dọn dữ liệu hoặc di chuyển file có thể làm mất khả năng khôi phục. Xuất JSON sau mỗi đợt nhập. Nếu trình duyệt không cho lưu, giao diện báo rõ và vẫn cho xuất file. Dữ liệu không tự gửi lên mạng, không tự ghi file trong repo và không tự push GitHub.

Đây là công cụ nhập liệu bổ trợ, không phải sản phẩm được yêu cầu xây trong lab. Giao diện dùng HTML/CSS/JavaScript thuần, có Codex hỗ trợ thực hiện; nội dung phản hồi do người nhập cung cấp.
