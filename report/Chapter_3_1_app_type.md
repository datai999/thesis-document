# **3. Cơ sở lý thuyết**

<div style="page-break-after: always;"></div>

## **3.1 Các loại ứng dụng**

### **3.1.1 Web App và Web-base App**

#### 3.1.1.a Web App

<p style='text-align: justify;'>
&emsp;
Ứng dụng web chính là một phần mềm ứng dụng nền tảng web 
để chạy các phần mềm theo mong muốn và nhu cầu của người sử dụng. 
Thông qua ứng dụng web người dùng có thể thực hiện được nhiều công việc khác nhau.
Web app có tính tương tác cao hơn website rất nhiều.
</p>

<center>
  <img src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_3_theory/img/wa.png?raw=true">
</center>

<center> Hình 3.1.1. Web Application </center>

Ưu điểm:

- Tương thích với nhiều nền tảng.
- Không cần cài đặt trên máy.
- Rất phổ biến, được hỗ trợ mạnh mẽ.
- Chỉ cần deploy lên server và sử dụng

Nhược điểm:

- Phụ thuộc vào trình duyệt.
- Không thể hỗ trợ offline.
- Muốn truy cập người dùng phải nhớ link.

Nên dùng khi:

- Dự án có các nghiệp vụ phức tạp.
- Dự án cần mở rộng về sau.

<p style='text-align: justify;'>
&emsp;
Với các nghiệp vụ đơn giản như quảng cáo, ra một sản phẩm mới, phát hành miễn phí sản phẩm trong thời gian ngắn hạn
thì nên dùng webstite thuần túy hoặc landing page.
</p>

<div style="page-break-after: always;"></div>

#### 3.1.1.b Web-base App

<p style='text-align: justify;'>
&emsp;
Web-based app – Ứng dụng web: Là ứng dụng chạy trên nền web, 
được viết bằng các ngôn ngữ web như HTML5, CSS, javascript hoặc jQuery Mobile. 
Về cơ bản là website với giao diện giống như app và nội dung được load từ web. 
Ứng dụng web dễ hình dung nhất là m.facebook.com
</p>

<center>
  <img src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_3_theory/img/mfb.png?raw=true">
</center>

<center> Hình 3.1.2. Web-base app: m.facebook.com </center>

Ưu điểm:

- Tương thích với nhiều nền tảng.
- Không cần cài đặt trên máy.
- Tiết kiệm tài nguyên và nhân lực.
- Chỉ cần deploy lên server và sử dụng

Nhược điểm:

- Phụ thuộc vào trình duyệt.
- Tốc độ xử lý chậm.
- Không mang lại trải nghiệm trọng vẹn.
- Không thể hỗ trợ offline.
- Muốn truy cập người dùng phải nhớ link.

Nên dùng khi:

- Dự án có nguồn lực và kinh phí thấp.
- Ứng dụng không đăng tải lên các store.
- Nhà phát triển có kinh nghiệm thuần web.

<div style="page-break-after: always;"></div>

### **3.1.2 Native App, Hybrid App và Cross Platform App**

<p style='text-align: justify;'>
&emsp;
Nhắc đến lập trình ứng dụng di động hiện nay thì ba thuật ngữ quan trọng không thể bỏ qua đó là Native App, Hybrid App và Cross Platform App.
Mỗi công nghệ có những ưu điểm và nhược điểm khác nhau cần cân nhắc để lựa chọn phù hợp với dự án.
</p>

<center>
  <img src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_3_theory/img/na-h-cp.png?raw=true">
  <p>Hình 3.2. Native App, Hybrid App và Cross Platform App</p>
</center>

<div style="page-break-after: always;"></div>

#### 3.1.2.a Native App

<p style='text-align: justify;'>
&emsp;
Native app thường được gọi là ứng dụng gốc. 
Là những ứng dụng được viết riêng cho một loại nền tảng như iOS, Android, Windows Phone bằng các ngôn ngữ tương ứng.
</p>

<center>
  <img src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_3_theory/img/na.png?raw=true">
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

#### 3.1.2.b Hybrid App

<p style='text-align: justify;'>
&emsp;
Hybrid App là tên gọi cho các ứng dụng lai. 
Ứng dụng lai được tạo nên từ ba công nghệ front end bao gồm HTML, CSS và JavaScript.
Lập trình viên sẽ tạo một khung rỗng chứa web và được chạy ở thiết bị di động.
</p>

<center>
  <img src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_3_theory/img/hebrid.png?raw=true">
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

#### 3.1.2.c Cross Platform App

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
  <img src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_3_theory/img/cp.png?raw=true">
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

### 3.1.3 **Kết luận và lựa chọn loại ứng dụng**

<p style='text-align: justify;'>
&emsp;
Với nhiều sự lựa chọn, nhóm sẽ tạo bảng đánh giá thang điểm 5 dựa trên các tiêu chí như sau
</p>

| Tiêu chí                          | Web App | Web-base App | Native App | Hybrid App | Cross Platform App |
| --------------------------------- | ------- | ------------ | ---------- | ---------- | ------------------ |
| Hiệu năng                         | 5       | 3            | 5          | 3          | 4                  |
| Trải nghiệm người dùng            | 5       | 3            | 5          | 3          | 5                  |
| Được hỗ trợ tốt từ cộng đồng      | 5       | 2            | 5          | 3          | 4                  |
| Chạy được trên web                | 5       | 2            | 0          | 0          | 3                  |
| Chạy được trên ios, android       | 2       | 4            | 2          | 4          | 5                  |
| Ít tốn nhân lực                   | 3       | 5            | 1          | 4          | 3                  |
| Đội ngũ phát triển có kinh nghiệm | 5       | 3            | 2          | 1          | 4                  |
| Tổng điểm                         | 29      | 22           | 20         | 18         | 28                 |

<p style='text-align: justify;'>
&emsp;
Qua bảng đánh nhóm chọn Web App và Cross Platform App.
</p>

<div style="page-break-after: always;"></div>



