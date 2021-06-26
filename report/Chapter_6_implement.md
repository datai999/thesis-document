## **6 Hiện thực hệ thống**

<div style="page-break-after: always;"></div>

### **6.1 Lưu trữ**

&emsp;**Tài liệu:** Các tài liệu tìm kiếm được để hỗ trợ về mặt nghiệp vụ

> https://github.com/datai999/thesis-document

</br>

&emsp;**Báo cáo:** Báo cáo đề cương, báo cáo luận văn được viết bằng code markdown.

Markdown là một ngôn ngữ đánh dấu đơn giản với cú pháp được định dạng bằng cách dùng văn bản thô

<center>
  <img width="300" src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_6_implement/img/markdown.png?raw=true">
  <p>Hình 6.1.a Logo Markdown</p>
</center>

Ưu điểm:

- Đơn giản
- Có thể chèn mã HTML
- Quen thuộc với các lập trình viên (ví dụ: README.md)
- Có thể quản lí version và lịch sử thông qua git

> https://github.com/datai999/thesis-document/tree/main/report

</br>

&emsp;**Code front-end:** Code giao diện

> https://github.com/datai999/thesis

&emsp;**Code back-end:** Code server

> https://github.com/datai999/thesis-service

<div style="page-break-after: always;"></div>

&emsp;**Database staging:** Cơ sở dữ liệu mỗi trường staging

> https://www.heroku.com/

<center>
  <img width="300" src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_6_implement/img/heroku.png?raw=true">
  <p>Hình 6.1.b Logo Heroku</p>
</center>

&emsp;**Gmail:** Thông tin dùng cho đăng nhập

> https://firebase.google.com/

<center>
  <img width="300" src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_6_implement/img/firebase.png?raw=true">
  <p>Hình 6.1.c Logo Firebase</p>
</center>

</br>

&emsp;**App android staging:** Các file .apk được build trên trang web Expo sau đó đc tải xuống và upload lại lên Google Drive.

<center>
  <img src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_6_implement/img/expoWeb.png?raw=true">
  <p>Hình 6.1.d Expo web Builds</p>
</center>

> Thư mục Google Drive giữa sinh viên và giảng viên

<div style="page-break-after: always;"></div>

### **6.2 Các môi trường**

<p style='text-align: justify;'>
&emsp;
Với dự án này nhóm sẽ sử dụng 3 môi trường để phát triển ứng dụng.
</p

<center>
  <img src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_6_implement/img/env.png?raw=true">
</center>

Vì công cụ vẽ không cho phép kí tự @ nên nhóm đã để dấu # thay thế.

> Staging Environment file apk: https://expo.io/@datai28599/thesis

<center>
  <img width="400" src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_6_implement/img/expoApp.png?raw=true">
  <p>Hình 6.2 Trang web Expo app</p>
</center>

<div style="page-break-after: always;"></div>

### **6.3 Chia nhiệm vụ**

<p style='text-align: justify;'>
&emsp;
Với những tính năng của hệ thống và cách thiết kế cũng như công nghệ đã chọn.
Nhóm chia thành 20 nhiệm vụ chính được phân bổ theo bảng như sau
</p>

| STT | Thành phần                    | Web      | Android  | IOS      | Staging  | Production |
| --- | ----------------------------- | -------- | -------- | -------- | -------- | ---------- |
| 1   | Menu điều hướng               | Đề cương | Đề cương | Luận văn | Đề cương | Luận văn   |
| 2   | Chức năng về đề tài           | Đề cương | Đề cương | Luận văn | Đề cương | Luận văn   |
| 3   | Chức năng về giảng viên       | Đề cương | Đề cương | Luận văn | Đề cương | Luận văn   |
| 4   | Chức năng về sinh viên        | Đề cương | Đề cương | Luận văn | Đề cương | Luận văn   |
| 5   | Chức năng về nhân viên        | Đề cương | Đề cương | Luận văn | Đề cương | Luận văn   |
| 6   | Chức năng về hội đồng         | Đề cương | Đề cương | Luận văn | Đề cương | Luận văn   |
| 7   | Phân công đề tài              | Đề cương | Đề cương | Luận văn | Đề cương | Luận văn   |
| 8   | Chức năng về tiêu chí         | Đề cương | Đề cương | Luận văn | Đề cương | Luận văn   |
| 9   | Chức năng về mẫu đánh giá     | Đề cương | Đề cương | Luận văn | Đề cương | Luận văn   |
| 10  | Cài đặt mẫu đánh giá hiện tại | Đề cương | Đề cương | Luận văn | Đề cương | Luận văn   |
| 11  | Đăng nhập                     | Đề cương | Đề cương | Luận văn | Đề cương | Luận văn   |
| 12  | Đăng xuất                     | Đề cương | Đề cương | Luận văn | Đề cương | Luận văn   |
| 13  | Chấm điểm                     | Luận văn | Luận văn | Luận văn | Luận văn | Luận văn   |
| 14  | Xuất báo cáo                  | Luận văn | Luận văn | Luận văn | Luận văn | Luận văn   |
| 15  | Thêm dữ liệu từ file Excel    | Luận văn | Luận văn | Luận văn | Luận văn | Luận văn   |
| 16  | Phân chia quyền người dùng    | Luận văn | Luận văn | Luận văn | Luận văn | Luận văn   |
| 17  | Các cài đặt hệ thống          | Luận văn | Luận văn | Luận văn | Luận văn | Luận văn   |
| 18  | Thông báo qua mail            | Luận văn | Luận văn | Luận văn | Luận văn | Luận văn   |
| 19  | Kiểm tra trên IOS             | Luận văn | Luận văn | Luận văn | Luận văn | Luận văn   |
| 20  | Đưa lên môi trường Production | Luận văn | Luận văn | Luận văn | Luận văn | Luận văn   |

<div style="page-break-after: always;"></div>

### **6.4 Filter và Interception request**

<p style='text-align: justify;'>
&emsp;
Hiện thực chứng năng kiểm tra token ở mục <b>6.4.2</b>.
</p>

<p style='text-align: justify;'>
&emsp;
Với Spring Boot, lớp filter không thể can thiệp sâu vào hệ thống.
Vậy nên ở lớp này sẽ kiểm tra xem header có đầy đủ và đúng format field hay không.
</p>

<p style='text-align: justify;'>
&emsp;
Lớp Interceptor có thể can thiệp các tài nguyên trong hệ thống.
Lớp này sẽ kiểm tra token và xác thực quyền hạn của người dùng 
có được phép sử dụng dịch vụ tương ứng hay không.
</p>

<center>
  <img src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_6_implement/img/sequence-request.png?raw=true">
</center>

<div style="page-break-after: always;"></div>

### **6.5 Code back-end**

#### 6.5.1 Phân chia source code

<p style='text-align: justify;'>
&emsp;
Tổ chức phân chia source code được triển khai theo module,
các module được chia theo design group database đã được giới thiệu ở mục <b>5.1.1.a</b>
</p>

<p style='text-align: justify;'>
&emsp;
Mỗi module thì được phân chia dựa trên mô hình MVC (Model, View, Controller).
</p>

<center>
  <img src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_6_implement/img/be-source.png?raw=true">
</center>

#### 6.5.2 Modal Class diagram

<p style='text-align: justify;'>
&emsp;
Triển khai các thiết thiết kế database ở mục <b>5.1</b> 
với đại diện các nhóm <b>br</b>, <b>ps</b>, <b>tp</b>, <b>sc</b>
lần lượt là các table <b>br_const_data</b>, <b>ps_student</b>, <b>tp_council</b>, <b>sc_criterion</b>.
</p>

<center>
  <img src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_6_implement/img/class-model.png?raw=true">
</center>

<div style="page-break-after: always;"></div>

#### 6.5.3 Service Class diagram

<p style='text-align: justify;'>
&emsp;
Thiết kế các service được thừa hưởng các dịch vụ có sẵn trong JpaRepository 
và có thể linh hoạt tùy biến các API riêng cho từng service.
</br>
&emsp;
Ví dụ với dịch vụ đề tài (TopicService).
</p>

<center>
  <img src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_6_implement/img/class-service.png?raw=true">
</center>

#### 6.5.4 Controller class diagram

<p style='text-align: justify;'>
&emsp;
Các controller (trừ các controller về import/report data) đều được extends từ một abstract class
nên các controller này đều dùng chung một sô API có sẵn trong ABaseController.
</br>
&emsp;
Ví dụ với các API gán các thành phần vào đề tài (TopicAssignController).
</p>

<center>
  <img src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_6_implement/img/class-controller.png?raw=true">
</center>

<div style="page-break-after: always;"></div>

### **6.5 CI-CD**

<div style="page-break-after: always;"></div>



