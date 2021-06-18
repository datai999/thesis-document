#### 3.2 Native App, Hybrid App và Cross Platform App

<p style='text-align: justify;'>
&emsp;
Nhắc đến lập trình ứng dụng di động hiện nay thì ba thuật ngữ quan trọng không thể bỏ qua đó là Native App, Hybrid App và Cross Platform App.
Mỗi công nghệ có những ưu điểm và nhược điểm khác nhau cần cân nhắc để lựa chọn phù hợp với dự án.
</p>

<center>
  <img src="/report/src/chapter_3_theory/img/na-h-cp.png">
  <p>Hình 3.2. Native App, Hybrid App và Cross Platform App</p>
</center>

<div style="page-break-after: always;"></div>

##### 3.2.1 Native App

<p style='text-align: justify;'>
&emsp;
Native app thường được gọi là ứng dụng gốc. 
Là những ứng dụng được viết riêng cho một loại nền tảng như iOS, Android, Windows Phone bằng các ngôn ngữ tương ứng.
</p>

<center>
  <img src="/report/src/chapter_3_theory/img/na.png">
  <p>Hình 3.2.1. Native App</p>
</center>

Ưu điểm:

- Về mặt performance thì native app chạy nhanh đặc biệt trong game.
- Truy cập phần cứng mạnh mẽ.
- Có nhiều lợi thế ở chế độ offline.

Nhược điểm:

- Không hỗ trợ đa nền tảng.
- Tốn nhân lực và tài nguyên khi dự cần cần đa nền tảng.

Nên dùng khi:

- Ứng dụng cần sự ăn khớp với nền tảng cao.
- Ứng dụng cần truy cập sâu vào quản lí phần cứng.
- Ứng dụng yêu cầu UI cao hoặc graphic animation như game.

<div style="page-break-after: always;"></div>

##### 3.2.2 Hybrid App

<p style='text-align: justify;'>
&emsp;
Hybrid App là tên gọi cho các ứng dụng lai. 
Ứng dụng lai được tạo nên từ ba công nghệ front end bao gồm HTML, CSS và JavaScript.
Lập trình viên sẽ tạo một khung rỗng chứa web và được chạy ở thiết bị di động.
</p>

<center>
  <img src="/report/src/chapter_3_theory/img/hebrid.png">
  <p>Hình 3.2.2. Hybrid App</p>
</center>

Ưu điểm:

- Có đc sự kế thừa từ Native App và Cross Platform App.
- Tiết kiệm tài nguyên và nhân lực.
- Dễ bảo trì và phát triển.
- Tương thích với nhiều nền tảng.

Nhược điểm:

- Giao diện phụ thuộc quá nhiều vào web bên trong khung chứa.
- Tốc độ xử lí không nhanh bằng Native App và Cross Platform App.

Nên dùng khi:

- Ứng dụng cần xuất bản trên nhiều nền tảng.
- Nhà phát triển có kinh nghiệm thuần web.

<div style="page-break-after: always;"></div>

##### 3.2.3 Cross Platform App

<p style='text-align: justify;'>
&emsp;
Cross Platform còn một tên gọi khác là Multi Platform
Thuật ngữ này dùng để chỉ các ứng dụng đa nền tảng, phù hợp để cài đặt cho nhiều loại thiết bị khác nhau. 
Đây được xem là giải pháp hiệu quả nhất để giải quyết các vấn đề khi sử dụng Native app.
</p>

<p style='text-align: justify;'>
&emsp;
Với Cross Platform, nhà phát triển chỉ cần sử dụng một ngôn ngữ và lập trình ứng dụng một lần. 
Chúng sẽ được biên dịch sang các phiên bản khác để phù hợp cho những nền tảng khác nhau
</p>

<center>
  <img src="/report/src/chapter_3_theory/img/cp.png">
  <p>Hình 3.2.3. Cross Platform App</p>
</center>

Ưu điểm:

- Tối ưu thời gian và chi phí phát triển.
- Dễ bảo trì và phát triển.
- Tương thích với nhiều nền tảng.

Nhược điểm:

- Nhiều vấn đề phát sinh từ framework khi phải biên dịch chuyển đổi giữa các ngôn ngữ.

Nên dùng khi:

- Ứng dụng cần xuất bản trên nhiều nền tảng.
- Ít thời gian và nhân lực cũng như chi phí phát triển.

<div style="page-break-after: always;"></div>
