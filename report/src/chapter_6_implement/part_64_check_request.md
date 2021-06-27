## **6.4 Filter và Interception request**

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
