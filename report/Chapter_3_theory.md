# **3. Cơ sở lý thuyết**

<div style="page-break-after: always;"></div>

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

##### 3.1.2 Native App, Hybrid App và Cross Platform App

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

## **3.2 Ứng dụng đa trang và Ứng dụng đơn trang**

<p style='text-align: justify;'>
&emsp;
Khi phát triển một ứng dụng, có hai kiểu thiết kế phổ biến hiện nay là 
ứng dụng đa trang (Multi-page Application-MPA) và ứng dụng đơn trang (Single-page Application-SPA). 
Mỗi kiểu thiết kế có những ưu và nhược điểm riêng phù hợp với các ứng dụng khác nhau. 
Vì vậy để có thể phát triển ứng dụng một cách hiệu quả, nhà phát triển phải cân
nhắc lựa chọn cách thiết kế phù hợp nhất với nhu cầu ứng dụng của mình.
</p>

### **3.2.1 Ứng dụng đa trang**

<p style='text-align: justify;'>
&emsp;
Ứng dụng đa trang (MPA) là một web-app hay một website chứa nhiều trang liên kết và các trang con, được điều hướng bằng menu. 
Ứng dụng đa trang hoạt động theo kiểu "truyền thống", các thay đổi như hiển thị dữ liệu sẽ được thực hiện bằng cách hiển thị một trang mới trong trình duyệt
</p>

<p style='text-align: justify;'>
&emsp;
 Hiện nay, ứng dụng đa trang được sử dụng rộng rãi trong nhiều lĩnh vực như thương mại điện tử
</p>

Ưu điểm:

- Cho phép khả năng mở rộng ứng dụng không giới hạn thông qua menu.
- Luồng điều hướng dễ dàng theo dõi.
- Hỗ trợ tốt cho SEO, các ứng dụng đa trang dễ dàng phân cấp.

Nhược điểm:

- Các ứng dụng đa trang có nội dung lớn tải chậm, ảnh hưởng đến trải nghiệm của người dùng.
- Khó thích nghi tốt với thiết bị di động.

### **3.2.2 Ứng dụng đơn trang**

<p style='text-align: justify;'>
&emsp;
Ứng dụng đơn trang (SPA) là một web-app hay một website tương tác với người dùng bằng cách tải lại một phần của trang hiện tại thay vì tải toàn bộ trang mới từ máy chủ. Cách hoạt động này hạn chế sự gián đoạn trải nghiệm của người dùng khi chuyển giữa các trang, giúp cho việc trải nghiệm ứng dụng gần giống với các desktop application.
</p>

<p style='text-align: justify;'>
&emsp;
Ngày nay, ứng dụng đơn trang được sử dụng rộng rãi trên toàn thế giới, đặc biệt phù hợp các ứng dụng với lượng truy cập lớn, yêu cầu tốc độ cao như mạng xã hội, email, map. Một số ứng dụng sử dụng SPA nổi tiếng như Facebook, Instagram, Google Map, Gmail,...
</p>

Ưu điểm:

- Tốc độ nhanh.
- Có khả năng làm việc với cache tốt, nên hiệu quả khi sử dụng ở chế độ offline.
- Thích nghi tốt với thiết bị di động.

Nhược điểm:

- Không tối ưu hoá cho SEO tốt (các công cụ tìm kiếm). Việc tìm kiếm các nội dung trong ứng dụng đơn trang bằng các công cụ tìm kiếm (google.com, bing.com) thường ít hiệu quả.
- Khó khăn trong việc mở rộng.

<div style="page-break-after: always;"></div>


