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
