# **3. Lựa chọn công nghệ**

<p style='text-align: justify;'>
&emsp;
Lựa chọn công nghệ cần dựa trên 3 yếu tố
</p>

- Dự án phù hợp với công nghệ nào
- Công nghệ có phù hợp với hiện tại và tương lai
- Tài nguyên hiện có: đội ngũ phát triển, vốn, ...

<p style='text-align: justify;'>
&emsp;
Để lựa chọn được công nghệ đáp ứng được 3 yếu tố trên, 
nhóm đã cố gắng đọc tài liệu cũng như trải nghiệm sơ qua 
để có được sự lựa chọn ưng ý nhất.
Sau khi tổng hợp lại, bỏ qua những framework nhỏ, 
nhóm sẽ giới thiệu qua những công nghệ chính mà nhóm sẽ đưa lên bàn cân trong chương này.
</p>

</br>

<center>
  <img src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_3_technology/img/find-technology.png?raw=true">
  <p>Hình 3: Lựa chọn công nghệ</p>
</center>

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
  <img width="600" src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_3_technology/img/wa.png?raw=true">
  <p>Hình 3.1.1.a: Web Application</p>
</center>

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
  <img src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_3_technology/img/mfb.png?raw=true">
  <p>Hình 3.1.2.b: Web-base app: m.facebook.com</p>
</center>

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
  <img src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_3_technology/img/na-h-cp.png?raw=true">
  <p>Hình 3.1.2: Native App, Hybrid App và Cross Platform App</p>
</center>

<div style="page-break-after: always;"></div>

#### 3.1.2.a Native App

<p style='text-align: justify;'>
&emsp;
Native app thường được gọi là ứng dụng gốc. 
Là những ứng dụng được viết riêng cho một loại nền tảng như iOS, Android, Windows Phone bằng các ngôn ngữ tương ứng.
</p>

<center>
  <img src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_3_technology/img/na.png?raw=true">
  <p>Hình 3.1.2.a: Native App</p>
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
  <img src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_3_technology/img/hebrid.png?raw=true">
  <p>Hình 3.1.2.b: Hybrid App</p>
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
  <img src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_3_technology/img/cp.png?raw=true">
  <p>Hình 3.1.2.c: Cross Platform App</p>
</center>

Ưu điểm:

- Tối ưu thời gian và chi phí phát triển.
- Dễ bảo trì và phát triển.
- Tương thích với nhiều nền tảng.

Nhược điểm:

- Nhiều vấn đề phát sinh từ frame-work khi phải biên dịch chuyển đổi giữa các ngôn ngữ.

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
Ứng dụng đa trang hoạt động theo kiểu "truyền thống", các thay đổi như hiển thị dữ liệu sẽ được thực hiện bằng cách hiển thị một trang mới trong trình duyệt.
</br>
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
Ứng dụng đơn trang (SPA) là một web-app hay một website tương tác với người dùng bằng cách 
tải lại một phần của trang hiện tại thay vì tải toàn bộ trang mới từ máy chủ. 
Cách hoạt động này hạn chế sự gián đoạn trải nghiệm của người dùng khi chuyển giữa các trang, 
giúp cho việc trải nghiệm ứng dụng gần giống với các desktop application.
</br>
&emsp;
Ngày nay, ứng dụng đơn trang được sử dụng rộng rãi trên toàn thế giới, 
đặc biệt phù hợp các ứng dụng với lượng truy cập lớn, yêu cầu tốc độ cao như mạng xã hội, email, map. 
Một số ứng dụng sử dụng SPA nổi tiếng như Facebook, Instagram, Google Map, Gmail,...
</p>

Ưu điểm:

- Tốc độ nhanh.
- Có khả năng làm việc với cache tốt, nên hiệu quả khi sử dụng ở chế độ offline.
- Thích nghi tốt với thiết bị di động.

Nhược điểm:

- Không tối ưu hoá cho SEO tốt (các công cụ tìm kiếm). Việc tìm kiếm các nội dung trong ứng dụng đơn trang bằng các công cụ tìm kiếm (google.com, bing.com) thường ít hiệu quả.
- Khó khăn trong việc mở rộng.

### **3.2.3 Kết luận lựa chọn kiểu ứng dụng**

<p style='text-align: justify;'>
&emsp;
Nhóm sẽ chọn ứng dụng đơn trang để phù hợp chuyển đổi giữa 2 nền tảng web và di động.
</p>

<div style="page-break-after: always;"></div>

## **3.3 Ngôn ngữ lập trình front-end**

<p style='text-align: justify;'>
&emsp;
Ngôn ngữ lập trình front-end phổ biến nhất hiện nay là JavaScript, bản nâng cao của nó là TypeScript.
</p>

<p style='text-align: justify;'>
&emsp;
Ngoài ra với sự mạnh mẽ đến từ famework Flutter kéo theo Dart cũng trở thành một sự lựa chọn cần cân nhắc đến.
</p>

### **3.3.1 JavaScript**

<p style='text-align: justify;'>
&emsp;
JavaScript là ngôn ngữ lập trình phổ biến nhất trên thế giới được tạo ra vào năm 1995.
</p>

<center>
  <img src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_3_technology/img/js.png?raw=true">
  <p>Hình 3.3.1 Logo JavaScript</p>
</center>

Ưu điểm:

- Không cần một compiler vì web browser có thể biên dịch nó bằng HTML.
- Nó dễ học hơn các ngôn ngữ lập trình khác.
- Lỗi dễ phát hiện hơn và vì vậy dễ sửa hơn.
- Hoạt động trên nhiều trình duyệt, nhiều nền tảng.
- Giúp website tương tác tốt hơn với khách truy cập.
- Nhanh hơn và nhẹ hơn các ngôn ngữ lập trình khác.

Nhược điểm:

- Dễ bị khai thác
- Có thể được dùng để thực thi mã độc trên máy tính của người dùng;
- JS code snippets lớn
- Có thể triển khai khác nhau tùy từng thiết bị dẫn đến việc không đồng nhất.
- Khó có sự kiểm soát về mặt design code.
- Không hỗ trợ lập trình hướng đối tượng.

<div style="page-break-after: always;"></div>

### **3.3.2 TypeScript**

<p style='text-align: justify;'>
&emsp;
TypeScript là một dự án mã nguồn mở được phát triển bởi Microsoft, 
nó có thể được coi là một phiên bản nâng cao của Javascript 
bởi việc bổ sung tùy chọn kiểu tĩnh và lớp hướng đối tượng mà điều này không có ở Javascript
</p>

<center>
  <img src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_3_technology/img/ts.png?raw=true">
  <p>Hình 3.3.2 Logo TypeScript</p>
</center>

Ưu điểm:

- Dễ phát triển ứng dụng lớn.
- Hỗ trợ các tính năng của bản JavaScript mới nhất.
- Dễ dàng design và cấu trúc hệ thống.
- Thừa hưởng hầu như tất cả ưu điểm của JavaScript.

Nhược điểm:

- Phải biên dịch.
- TypeScript không phải là ngôn ngữ độc lập, nó phụ thuộc và JavaScript.
- Khó tiếp cận hơn nhiều so với JavaScript.

<div style="page-break-after: always;"></div>

### **3.3.3 Dart**

<p style='text-align: justify;'>
&emsp;
Dart là một ngôn ngữ lập trình đa mục đích của Google có thể dùng để phát triển web ui, server và cả ứng dụng di động.
</p>

<center>
  <img width="400" src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_3_technology/img/dart.png?raw=true">
  <p>Hình 3.3.3 Logo Dart</p>
</center>

Ưu điểm:

- Biên dịch nhanh.
- Dễ học với những lập trình viên biết C++, C# và Java.
- Code UI nhanh và đẹp.
- Rất phù hợp với lập trình Reactive.
- Code được sử dụng ở nhiều nền tảng Web UI, Server, Cross Flatform App.
- Tài liệu tập trung duy nhất tại một trang.

Nhược điểm:

- Ít sự lựa chọn frame-work, library hơn JavaScript.
- Dù đã release 1.0 chính thức, tuy nhiên còn khá mới. Một số plugin rất quan trọng như Google Map vẫn còn đang phát triển.
- Google đã có thời gian "bỏ con giữa chợ" khi Flutter chưa có sự ảnh hưởng nhất định.

### **3.3.4 Kết luận và lựa chọn ngôn ngữ front-end**

&emsp;
Nhóm quyết địnnh lựa chọn JavaScript với những lý do sau:

- Đội ngũ phát triển không có kinh nghiệm với TypeScript.
- JavaScript có frame-work Expo (React Native) có thể làm Web UI, Cross Platform App giống Flutter.
- Cộng đồng hỗ trợ lâu đời và mạnh mẽ.
- Thị trường nhiều lập trình viên JavaScript hơn, dễ kế thừa và phát triển về sau.

<div style="page-break-after: always;"></div>

## **3.4 Frame-work front-end**

### **3.4.1 React**

<p style='text-align: justify;'>
&emsp;
React là một thư viện JavaScript, được Facebook ra mắt từ năm 2013. Đây là một thư viện tuyệt vời để xây dựng các ứng dụng web lớn, nơi dữ liệu có thể thay đổi thường xuyên
</p>

<center>
  <img src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_3_technology/img/react.png?raw=true">
  <p>Hình 3.4.1. Logo Frame-work React</p>
</center>

Ưu điểm:

- Dễ học, nhờ thiết kế đơn giản, sử dụng JSX (một cú pháp giống như HTML) để tạo khuôn mẫu.Tài liệu hướng dẫn của Facebook rất chi tiết.
- Tốc độ ứng dụng vô cùng ấn tượng. Tất cả là nhờ kỹ thuật DOM ảo của React và tối ưu hóa rendering.
- Hỗ trợ render phía máy chủ rất tốt. Điều này làm cho React trở thành một frame-work mạnh mẽ cho các ứng dụng tập trung vào nội dung.
- Hỗ trợ tạo ứng dụng Progressive Web App (PWA) nhanh chóng. Đơn giản chỉ cần câu lệnh: “creat-react-app”.
- Data-binding một chiều, có nghĩa là ít side effects không mong muốn.
- Mô hình Redux: một mô hình quản lý trạng thái ứng dụng cực tốt. Và một điều rất hay là nó rất dễ học.
- React theo trường phái lập trình hàm (Functional Programming), tạo mã dễ kiểm tra và có khả năng tái sử dụng cao.
- Ngoài ra, còn một ưu điểu cực lớn nữa, đó là nếu bạn biết về React thì bạn sẽ dễ dàng học thêm React Native.

Nhược điểm:

- Thiếu tài liệu hướng dẫn chính chủ: Chính vì sự phát triển siêu nhanh của ReactJS mà tài liệu hướng dẫn chính chủ không theo kịp. Hầu hết các bài viết hướng dẫn trên mạng bị lỗi thời.
- React đang đi theo hướng lập trình hàm, điều này sẽ gây đôi chút khó chịu và ác cảm với các dev đã quen với lập trình hướng đối tượng (OOP).
- Việc trộn giữa templating với logic ứng dụng (JSX) có thể gây nhầm lẫn cho một số nhà phát triển lúc đầu.

<div style="page-break-after: always;"></div>

### **3.4.2 Angular**

<p style='text-align: justify;'>
&emsp;
Angular là một JavaScript MVVM frame-work, được ra mắt từ 2009. Đây là một JS frame-work nổi đình đám trong giới front-end, giúp xây dựng các ứng dụng web có tính tương tác cao.
</p>

<center>
  <img src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_3_technology/img/angular.png?raw=true">
  <p>Hình 3.4.2. Logo Frame-work Angular</p>
</center>

Ưu điểm:

- Hỗ trợ trợ TypeScript
- Data-binding: Nó tự động đồng bộ hóa dữ liệu giữa thành phần model và view.
- Tài liệu hướng dẫn chi tiết và đầy đủ. Với tài liệu hướng dẫn chi tiết từ chính nhà cung cấp sẽ giúp người mới tìm hiểu Angular nhanh chóng tiếp cận và làm chủ frame-work này. Nhờ đó mà giảm thời gian training, thảo luận với đồng nghiệp… khi mà trên trang chủ của họ có tất cả.
- MVVM (Model-View-ViewModel): cho phép bạn chia dự án thành nhiều phần độc lập với nhau. Từ đó bạn sẽ dễ dàng chỉnh sửa, thêm tính năng cũng như bảo trì dự án sau này.
- Dependency Injection: DI là một desgin pattern mà được nhắc đến rất nhiều trong triết lý clean code SOLID. Với DI, nó cho phép bạn làm giảm sự phụ thuộc giữa các Object với nhau. Các object càng độc lập với nhau càng tốt, mục đích để sau này nâng cấp, sửa đổi… sẽ hạn chế ảnh hưởng tới các object khác.
- Cấu trúc và kiến trúc của Angular được tạo ra đặc biệt cho khả năng mở rộng dự án lớn

Nhược điểm:

- Angular khá là đa dạng các thành phần/khái niệm như Injectables, Components, Pipes, Modules… Điều này khiến cho việc tìm hiểu trở nên khó khăn hơn một chút so với React vốn chỉ có một thành phần duy nhất là Component.
- Chậm hơn React và Vuejs.

<div style="page-break-after: always;"></div>

### **3.4.3 Vue**

<p style='text-align: justify;'>
&emsp;
Vue.js là một frame-work JavaScript, được ra mắt vào năm 2013, hoàn toàn phù hợp để tạo giao diện người dùng có khả năng thích ứng cao và các ứng dụng trang đơn phức tạp.
</p>

<center>
  <img src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_3_technology/img/vue.png?raw=true">
  <p>Hình 3.4.3. Logo Frame-work Vue</p>
</center>

Ưu điểm:

- Empowered HTML: có thể giúp tối ưu hóa việc xử lý các khối HTML khi sử dụng các thành phần khác nhau.
- Tài liệu hướng dẫn chi tiết.
- Khả năng tương thích cao vì khá tương đồng với Angular và React về mặt thiết kế và kiến trúc.
- Khả năng tích hợp tốt, nó có thể được sử dụng cho việc xây dựng cả ứng dụng (single-page applications) phức tạp hoặc chỉ một phần của ứng dụng. Điều này cho phép cập nhật, nâng cấp ứng dụng mà không ảnh hưởng quá nhiều tới hệ thống hiện tại.
- Large scaling: js có thể phát triển templates có khả năng tái sử dụng cao.
- Kích thước nhỏ.

Nhược điểm:

- Thiếu tài nguyên: Vuejs vẫn có thị phần khá nhỏ so với React hoặc Angular.
- Việc chia sẻ kiến ​​thức trong cộng đồng vẫn còn khá ít.

<div style="page-break-after: always;"></div>

### **3.4.4 Lựa chọn frame-work front-end**

<p style='text-align: justify;'>
&emsp;
Các front-end frame-work cho phép lập trình viên bắt đầu phát triển một trang web mới dễ dàng và tốt hơn.
Tuy nhiên việc chọn ra frame-work tốt nhất thực sự là một điều không hề dễ dàng.
</p>

<center>
  <img src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_3_technology/img/rav.png?raw=true">
  <p>Hình 3.4.4.a Frame-work Angular vs Vue vs React</p>
</center>

<p style='text-align: justify;'>
&emsp;
Ở các phần trước nhóm đã chọn Cross Platfrom App cho di động và ngôn ngữ front-end là JavaScript
nên app di động sẽ được viết bằng React Native. Với sự tương thích giữa các frame-work có thể thấy React có thể là lựa chọn tốt để đồng hành cùng React Native.
</p>

<center>
  <img src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_3_technology/img/react-native-web.png?raw=true">
  <p>Hình 3.4.4.b Dùng React-native code web</p>
</center>

<p style='text-align: justify;'>
&emsp;
Sau quá trình tìm hiểu nhóm tìm ra Expo, là frame-work React Native có thể render tốt trên web
nên nhóm quyết định sẽ dùng React Native để dựng web.
</p>

<div style="page-break-after: always;"></div>

## **3.5 Ngôn ngữ lập trình và frame-work back-end**

### **3.5.1 Java và Spring-boot**

<p style='text-align: justify;'>
&emsp;
Java là ngôn ngữ lập trình back-end phổ biến nhất.
</p>

<p style='text-align: justify;'>
&emsp;
Đây là ngôn ngữ lập trình đa năng, đa nền tảng, hướng đối tượng (object-oriented) và có tính đồng thời (concurrent) được phát triển bởi Oracle.
Ngôn ngữ này có thể biên dịch (compile) mã lệnh dưới dạng mã byte Java (Java bytecode) 
để chạy trên Java Virtual Machine (JVM). Nhờ đó, bất kỳ thiết bị nào có thể cài đặt JVM thì có thể chạy được các ứng dụng viết bằng Java.
</p>

<center>
  <img width="80" src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_3_technology/img/java.png?raw=true">
  <p>Hình 3.5.1.a Logo Java</p>
</center>

<p style='text-align: justify;'>
&emsp;
Spring là một frame-work phát triển các ứng dụng Java được sử dụng bởi hàng triệu lập trình viên. 
Nó giúp tạo các ứng dụng có hiệu năng cao, dễ kiểm thử, sử dụng lại code…
</p>

<p style='text-align: justify;'>
&emsp;
Spring Boot là một web frame-work dựa trên Java.
Nó được tạo ra bởi Spring với mục đích dễ sử dụng và cung cấp một ứng dụng dựa trên Spring ở cấp độ sản xuất mà bạn có thể cần chạy.
Có thể nói, Spring boot là bản rút gọn của Spring
</p>

<center>
  <img width="400" src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_3_technology/img/springboot.png?raw=true">
  <p>Hình 3.5.1.b Logo Spring-boot</p>
</center>

Ưu điểm:

- Tạo các ứng dụng Spring độc lập
- Khả năng mở rộng cao
- Tài liệu tuyệt vời
- Được xây dựng cho các ứng dụng quy mô lớn sử dụng cách tiếp cận đám mây
- Hệ sinh thái mở rộng

<div style="page-break-after: always;"></div>

### **3.5.2 C# và ASP .NET**

<p style='text-align: justify;'>
&emsp;
C# là ngôn ngữ lập trình hiện đại, hướng đối tượng và được xây dựng trên nền tảng của hai ngôn ngữ mạnh nhất là C++ và Java.
</p>

<center>
  <img src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_3_technology/img/csharp.png?raw=true">
  <p>Hình 3.5.2.a Logo C#</p>
</center>

<p style='text-align: justify;'>
&emsp;
ASP.Net là một nền tảng phát triển web được cung cấp bởi Microsoft và được sử dụng để tạo các ứng dụng dựa trên web. 
ASP.Net được phát hành lần đầu tiên vào năm 2002.
Các ứng dụng ASP.Net cũng có thể được viết bằng nhiều ngôn ngữ .Net. Chúng bao gồm C#, VB.Net và J#.
</p>

<center>
  <img src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_3_technology/img/dotnet.png?raw=true">
  <p>Hình 3.5.2.b Logo ASP .NET</p>
</center>

Ưu điểm:

- Chạy mượt và ổn định cao hơn các ngôn ngữ khác.
- Tốc độ tải trang được tối ưu.
- Dễ dàng tùy chỉnh để tương thích với công nghệ mới.
- Độ bảo mật cao do kế thừa từ Java.

<div style="page-break-after: always;"></div>

### **3.5.3 Python và DJango**

<p style='text-align: justify;'>
&emsp;
Python là một trong những ngôn ngữ backend phát triển nhanh và phổ biến hàng đầu thế giới. 
Nhờ có cú pháp đơn giản, dễ hiểu cùng nhiều tài liệu hướng dẫn trực tuyến nên Python rất phổ biến cho các lập trình viên mới.
</p>

<center>
  <img width="200" src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_3_technology/img/python.png?raw=true">
  <p>Hình 3.5.3.a Logo Python</p>
</center>

<p style='text-align: justify;'>
&emsp;
Django là một frame-work Python cấp cao được xây dựng với ý tưởng kèm theo các "batteries included".
Có nghĩa là hầu hết mọi thứ mà một lập trình viên muốn có đều có sẵn mặc định.
Do đó, ít phải cài các plugin của bên thứ ba và yên tâm khi mọi thứ trong Django hoạt động nhịp nhàng cùng nhau.
Vì vậy Django rất phù hợp với các ứng dụng lớn và không nền sử dụng với ứng dụng nhỏ.
</p>

<center>
  <img width="500" src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_3_technology/img/django.png?raw=true">
  <p>Hình 3.5.3.b Logo Django</p>
</center>

Ưu điểm:

- Khả năng tùy biến cao
- Không cần làm từ đầu, tốc độ phát triển nhanh
- Có thể mở rộng
- Cộng đồng lớn và tài liệu nhiều

<div style="page-break-after: always;"></div>

### **3.5.4 JavaScript và ExpressJS**

<p style='text-align: justify;'>
&emsp;
Với NodeJS hỗ trợ để có thể lập trình ngôn ngữ Javascript để chạy trên server.
Với sự phổ biến của JavaScript, dễ học và sự hỗ trợ mạnh mẽ từ các frame-work thì NodeJS đang là xu thế dẫn đầu hiện nay.
</p>

<center>
  <img src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_3_technology/img/js.png?raw=true">
  <p>Hình 3.5.4.a Logo JavaScript</p>
</center>

<p style='text-align: justify;'>
&emsp;
NodeJS là một nền tảng được xây dựng trên V8 JavaScript Engine – trình thông dịch thực thi mã JavaScript, 
giúp xây dựng các ứng dụng web một cách đơn giản và dễ dàng mở rộng.
</p>

<p style='text-align: justify;'>
&emsp;
Express là một frame-work nhanh, tối giản cho NodeJS.
Nó cung cấp một layer mỏng của các tính năng ứng dụng web cơ bản, mà không làm mờ đi các tính năng của NodeJS.
Hơn nữa, nó dễ dàng xây dựng một API mạnh mẽ với sự trợ giúp của các phương thức HTTP khác nhau và các phần mềm trung gian có sẵn.
</p>

<center>
  <img width="500" src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_3_technology/img/express.png?raw=true">
  <p>Hình 3.5.4.b Logo JavaScript</p>
</center>

Ưu điểm:

- API định tuyến tốt
- Tối giản
- Thiết lập rất dễ dàng và nó đơn giản để học
- Số lượng lớn các plugin có sẵn để sử dụng

<div style="page-break-after: always;"></div>

### **3.5.5 Lựa chọn ngôn ngữ lập trình và frame-work back-end**

<p style='text-align: justify;'>
&emsp;
Chúng ta có thể thấy Python là một ngôn ngữ rất dễ học, dễ sử dụng, có cú pháp đơn giản, cộng đồng hỗ trợ lớn, nhiều công cụ và công nghệ hỗ trợ.
Đây cũng là ngôn ngữ mà được rất nhiều người yêu thích, tuy nhiên Python lại có những hạn chế như tốc độ khá chậm, chạy đơn luồng, 
vì vậy sẽ không thể đáp ứng được khi ứng dụng càng ngày càng có nhiều kết nối.
</p>

<p style='text-align: justify;'>
&emsp;
NodeJS có đặc điểm là tốc độ rất nhanh, xử lý nhiều kết nối tốt, dễ dàng mở rộng để phát triển.
Tuy nhiên NodeJS gây hao tốn tài nguyên và thời gian.
NodeJS còn non trẻ, giữa các version có sự thay đổi rất lớn.
</p>

<p style='text-align: justify;'>
&emsp;
Không có Visual Studio thì khó có thể viết code.
ASP.NET có phí sử dụng khá cao, không phù hợp sử dụng cho các doanh nghiệp nhỏ hay các cá nhân.
</p>

<p style='text-align: justify;'>
&emsp;
Java là một ngôn ngữ mạnh, linh hoạt, bảo mật cao, viết một lần thực thi khắp nơi,
lập trình đa luồng tốt có thể đáp ứng những hệ thống cần tốc độ cao.
Hệ thống viết bằng Java có kiến trúc thiết kế tốt thì dễ mở rộng, có tính hướng đối tượng đầy đủ phù hợp với các nghiệp vụ phức tạp.
Lịch sử dày dặn giúp Java có cộng đồng hỗ trợ mạnh mẽ về các tài nguyên có sẵn và tài liệu đầy đủ.
Lập trình viên Java dễ tìm, dễ dàng kế thừa hệ thống.
</p>

<p style='text-align: justify;'>
&emsp;Vậy nhóm quyết chọn Java cùng với Spring-boot frame-work để sử dụng trong dự án này.
</p>

<div style="page-break-after: always;"></div>

## **3.6 Cơ sở dữ liệu**

&emsp;**Khái niệm**

<p style='text-align: justify;'>
&emsp;
Cơ sở dữ liệu (Database) là một tập hợp các dữ liệu có tổ chức, 
thường được lưu trữ và truy cập điện tử từ hệ thống máy tính. 
Khi cơ sở dữ liệu phức tạp hơn, chúng thường được phát triển bằng cách 
sử dụng các kỹ thuật thiết kế và mô hình hóa chính thức
</p>

&emsp;**Phân loại**

- Cơ sở dữ liệu quan hệ (SQL)
- Cơ sở dữ liệu phi quan hệ (NoSQL):
  - Cơ sở dữ liệu hướng tài liệu
  - Cơ sở dữ liệu dạng khoá – giá trị
  - Cơ sở dữ liệu mô hình wide – column
  - Cơ sở dữ liệu dạng bộ máy tìm kiếm

<center>
  <img width="500" src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_3_technology/img/db-type.png?raw=true">
  <p>Hình 3.6 Phân loại cơ sở dữ liệu</p>
</center>

<div style="page-break-after: always;"></div>

### **3.6.1 Cơ sở dữ liệu quan hệ**

<p style='text-align: justify;'>
&emsp;
Hệ thống quản lí cơ sở dữ liệu quan hệ được phát triển vào năm 1970 
với nền tảng lí thuyết vững chắc và có ảnh hưởng lớn các hệ thống khác hôm nay. 
Tên tiếng Anh: Relational database management system – RDBMS.
</p>

<p style='text-align: justify;'>
&emsp;
Các RDBMS lưu trữ dữ liệu với dạng “quan hệ”: 
các bảng với dòng và cột nơi mọi thông tin dữ liệu được lưu trữ như một giá trị của một ô cụ thể. 
Dữ liệu trong một RDBMS được quản lý thông qua giao thức nổi tiếng SQL – ngôn ngữ truy vấn cấu trúc. 
SQL là giao thức được chuẩn hoá, đem đến sự đa nhiệm và tính dễ đoán biết.
</p>

Ưu điểm:

- Các hệ thống RDBMS hữu dụng trong việc xử lí các dữ liệu được cấu trúc kỹ càng và hỗ trợ ACID – 4 thuộc tính quan trọng của bất kì hệ thống cơ sở dữ liệu nào:
  - Tính nguyên tố (Atomicity). Một giao dịch có nhiều thao tác khác biệt thì hoặc là toàn bộ các thao tác hoặc là không một thao tác nào được hoàn thành.
  - Tính nhất quán (Consistency). Một giao dịch hoặc là sẽ tạo ra một trạng thái mới và hợp lệ cho dữ liệu, hoặc trong trường hợp có lỗi sẽ chuyển toàn bộ dữ liệu về trạng thái trước khi thực thi giao dịch.
  - Tính độc lập (Isolation). Một giao dịch đang thực thi và chưa được xác nhận phải bảo đảm tách biệt khỏi các giao dịch khác.
  - Tính bền vững (Durability). Dữ liệu được xác nhận sẽ được hệ thống lưu lại sao cho ngay cả trong trường hợp hỏng hóc hoặc có lỗi hệ thống, dữ liệu vẫn đảm bảo trong trạng thái chuẩn xác.
- Dữ liệu được lưu trữ và truy xuất dễ dàng bằng các lệnh truy vấn SQL. Cấu trúc dữ liệu cũng có thể được mở rộng nhanh chóng, việc bổ sung thêm các dữ liệu mới cũng không ảnh hưởng tới các data có sẵn.
- Các RDBMS còn có khả năng cấp quyền truy xuất và chỉnh sửa thông tin cho các loại người dùng khác nhau (admin, user, khách vãng lai, etc.).

Nhược điểm:

- Không xử lí tốt các dữ liệu phi cấu trúc.
- Các dữ liệu khi bị chia cắt cần được viết lại dưới dạng khác dễ đọc hơn là ở dạng bảng tính (table), và tốc độ xử lí dữ liệu cũng khá chậm.
- Việc thay đổi cơ sở dữ liệu dạng RDBMS cũng khá khó vì tính quy củ chặt chẽ của nó.
- RDBMS tốn nhiều chi phí hơn các hệ thống cơ sở dữ liệu khác trong việc xây dựng và phát triển.
- Việc nâng cấp và mở rộng máy chủ theo chiều dọc hoặc ngang (\*horizontal/ vertical scalability) phức tạp.
- Việc phân mảnh (\*sharding)trong khi vẫn giữ vững các tiêu chí về ACID là một thử thách lớn.

Nên dùng khi:

- Các trường hợp khi giữ vững tính toàn vẹn dữ liệu – dữ liệu không thể bị chỉnh sửa dễ dàng là tối cần thiết.
- Thông tin nội bộ

<div style="page-break-after: always;"></div>

### **3.6.2 Cơ sở dữ liệu hướng tài liệu**

<p style='text-align: justify;'>
&emsp;
Cơ sở dữ liệu hướng tài liệu hay còn gọi là Document store, 
một thiết kế riêng biệt cho việc lưu trữ tài liệu dạng văn kiện JSON, BSON hoặc XML. 
Vì là cấu trúc dữ liệu không ràng buộc khác với SQL, 
các cơ sở dữ liệu này không đòi hỏi người dùng tự tạo bảng nhập liệu trước khi nhập dữ liệu vào. 
Các tài liệu có thể chứa bất kì dữ liệu nào. 
Cơ sở dữ liệu dạng này có các cặp khoá – giá trị nhưng cũng có đính kèm các trị số siêu dữ liệu (*metadata)
giúp việc truy vấn (*query) dễ dàng hơn.
</p>

Các cơ sở dữ liệu tiêu biểu:

<center>
  <img width="250" src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_3_technology/img/mongo.png?raw=true">
  <p>Hình 3.6.2.a Logo Mongo</p>
</center>

<center>
  <img width="300" src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_3_technology/img/couchbase.png?raw=true">
  <p>Hình 3.6.2.b Logo Couchbase</p>
</center>

Ưu điểm:

- Cơ sở dữ liệu hướng tài liệu rất linh hoạt, có thể xử lí dữ liệu nửa cấu trúc và không cấu trúc rất tốt.
- Không cần quan tâm tới dạng dữ liệu khi setup, điều này tốt trong trường hợp không lường trước được dạng dữ liệu nào bạn sẽ cần lưu trữ.
- Người dùng có thể thiết kế một cấu trúc cho một tài liệu cụ thể mà không ảnh hưởng tới các tài liệu khác.
- Schema cho cơ sở dữ liệu cũng có thể được tuỳ chỉnh mà không gây ra thời gian downtime, giúp đem đến high availability (tính sẵn sàng cao).
- Thời gian ghi dữ liệu cũng rất nhanh.
- Dễ dàng mở rộng theo chiều ngang của chúng. Quá trình chia sẻ cũng dễ hiểu và dễ thao tác hơn so với cơ sở dữ liệu quan hệ, nên document store có thể mở rộng nhanh và dễ dàng.

Nhược điểm:

- Cơ sở dữ liệu dạng lưu trữ tài liệu hy sinh các yếu tố ACID để đổi lấy sự linh hoạt.
- Việc truỵ vấn chỉ có thể được thực hiện trong từng tài liệu, không thể truy vấn dữ liệu trên nhiều tài liệu khác nhau.

Nên dùng khi:

- Dữ liệu phi cấu trúc hoặc không có cấu trúc
- Quản lý nội dung
- Phân tích dữ liệu chuyên sâu
- Tạo mẫu nhanh

<div style="page-break-after: always;"></div>

### **3.6.3 Cơ sở dữ liệu dạng khoá – giá trị**

<p style='text-align: justify;'>
&emsp;
Key-value stores là kiểu lưu trữ đơn giản nhất trong các loại cơ sở dữ liệu NoSQL đồng thời nó cũng là kiểu lưu trữ cho tất cả các Hệ quản trị cơ sở dữ liệu NoSQL. 
Thông thường, các hệ quản trị cơ sở dữ liệu Key-value lưu trữ dữ liệu dưới dạng key (là một chuỗi duy nhất) 
liên kết với value có thể ở dạng chuỗi văn bản đơn giản hoặc các tập, danh sách dữ liệu phức tạp hơn. 
Các gía trị này có thể được gán bất cứ loại giá trị nào: Số, Chuỗi giá trị, Bộ đếm, JSON, XML, HTML, PHP, Nhị phân, Hình ảnh, Video ngắn, Danh sách,...
Quá trình tìm kiếm dữ liệu thường sẽ được thực hiện thông qua key, điều này dẫn đến sự hạn chế về độ chính xác. 
</p>

Các cơ sở dữ liệu tiêu biểu:

<center>
  <img width="600" src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_3_technology/img/redis-memcached.png?raw=true">
  <p>Hình 3.6.3 Logo Redis vs Logo Memcached</p>
</center>

Ưu điểm:

- Rất linh hoạt và có thể xử lí nhiều loại dữ liệu một cách nhanh chóng.
- Các chìa khoá được dùng để truy xuất thẳng tới các giá trị tìm kiếm, mà không cần thông qua quá trình index, giúp quá trình tìm kiếm diễn ra nhanh chóng.
- Linh động: lưu trữ key – value có thể được chuyển từ hệ thống này sang hệ thống khác mà không cần code lại.
- Có thể mở rộng theo chiều ngang dễ dàng và chi phí vận hành thấp.

Nhược điểm:

- Tính linh hoạt của CSDL dạng key – value bị đánh đổi bởi tính chính xác.
- Rất khó để truy xuất giá trị chính xác vì dữ liệu được lưu trữ theo blob, nên kết quả trả về hầu như đều theo blob.
- Khó khan khi báo cáo số liệu hoặc cần chỉnh sửa một phần của các giá trị.
- Không phải objects nào cũng có thể được cấu hình thành cặp chìa khoá – giá trị được.

Nên dùng khi:

- Khuyến nghị các sản phẩm / thông tin tương tự
- Thông tin và thiết lập người dùng
- Dữ liệu phi cấu trúc như review sản phẩm, bình luận của blog
- Quản lý session trên diện rộng
- Dữ liệu được truy xuất thường xuyên nhưng không thường xuyên được cập nhật

<div style="page-break-after: always;"></div>

### **3.6.4 Cơ sở dữ liệu mô hình wide – colum**

<p style='text-align: justify;'>
&emsp;
Mô hình wide – column là một dạng lưu cơ sở dữ liệu phi quan hệ lưu trữ theo dạng cột. 
Mô hình này có vài điểm tương đồng với mô hình key – value nhưng cũng có vài tính chất của dạng cơ sở dữ liệu quan hệ.
</br>
&emsp;
Mô hình wide – column dựa trên khái niệm keyspace thay vì schema. 
Một keyspace bao gồm nhiều cụm column (tương tự như table nhưng linh hoạt hơn về cấu trúc), 
mỗi cụm bao gồm nhiều hàng và nhiều cột riêng biệt. 
Mỗi hàng không cần phải có số lượng hoặc loại cột. 
Một timestamp quyết định phiên bản gần nhất của data.
</p>

Các cơ sở dữ liệu tiêu biểu:

<center>
  <img width="500" src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_3_technology/img/cassandra-hbase.png?raw=true">
  <p>Hình 3.6.4 Logo Cassandra vs Logo Hbase</p>
</center>

Ưu điểm:

- Có thể xử lí dữ liệu cấu trúc và phi cấu trúc, đồng thời cũng dễ dàng nâng cấp.
- Khả năng mở rộng theo chiều ngang cũng dễ dàng và nhanh chóng hơn cơ sở dữ liệu quan hệ.
- Có khả năng nén tốt hơn cơ sở dữ liệu dạng dòng.
- Data set lớn có thể dễ dàng duyệt hơn.
- Xử lí tốt các yêu cầu truy xuất tập trung.

Nhược điểm:

- Upload và update số liệu cá nhân rất khó.
- Chậm hơn so với cơ sở dữ liệu quan hệ khi xử lí các giao dịch.

Nên dùng khi:

- Xử lí các dữ liệu lớn (big data) khi tốc độ cần thiết.
- Lưu trữ dữ liệu big data.
- Các project có quy mô lớn.

<div style="page-break-after: always;"></div>

### **3.6.5 Cơ sở dữ liệu dạng bộ máy tìm kiếm**

<p style='text-align: justify;'>
&emsp;
Cơ sở dữ liệu dạng bộ máy tìm kiếm (Elasticsearch) về cốt lõi là một bộ máy tìm kiếm 
và không hoàn toàn là là cơ sở dữ liệu chuyên biệt như các loại trên, 
nhưng ngày càng được các nhà phát triển tận dụng để giảm thiểu độ lag khi tìm kiếm thông tin. 
Elasticsearch được xem như một cơ sở dữ liệu dạng phi quan hệ, dựa trên nền tảng lưu trữ dữ liệu dạng văn kiện, 
thiết kế chuyên biệt để tối ưa hoá lưu trữ và trao đổi dữ liệu nhanh chóng.
</p>

Các cơ sở dữ liệu tiêu biểu:

<center>
  <img width="400" src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_3_technology/img/elasticsearch.png?raw=true">
  <p>Hình 3.6.5 Logo Elasticsearch</p>
</center>

Ưu điểm:

- Có khả năng mở rộng cao, với schema linh hoạt và tốc độ trả về thông số lưu trữ nhanh.
- Hỗ trợ khả năng tìm kiếm nâng cao: tìm kiếm full text, khuyến nghị các kết quả tìm kiếm, và hỗ trợ các thông tin tìm kiếm phức tạp.
- Có tính năng "Stemming" là từ để chỉ kỹ thuật dùng để biến đổi 1 từ về dạng gốc bằng cách đơn giản là loại bỏ 1 số ký tự nằm ở cuối được xem như biến thể của từ.

Nhược điểm:

- Elasticsearch được sử dụng với hình thức thay thế hoặc bổ trợ cho CSDL có sẵn hơn là độc lập.
- Độ ổn định và bảo mật kém, không có giao thức xác định và xác nhận danh tính của một khách truy cập hoặc điều khiển đăng nhập.
- Không hỗ trợ thanh toán.

Nên dùng khi:

- Cung cấp các thông tin phụ hỗ trợ việc ra quyết định khi tìm kiếm dữ liệu
- Lưu file tạm

<div style="page-break-after: always;"></div>

### **3.6.6 Lựa chọn cơ sở dữ liệu**

#### 3.6.6.a Lựa chọn loại cơ sở dữ liệu

Dựa vào các đối tượng mà hệ thống hướng tới, hệ thống cần:

- Đảm bảo tính toàn vẹn, tính nhất quán, giảm dư thừa dữ liệu
- Cần đảm bảo mối liên hệ giữa điểm số, người chấm điểm và sinh viên được chặt chẽ
- Đảm bảo tính minh bạch của các điểm số
- Xuất báo cáo
- Các tính năng và kiểu dự liệu có thể dự đoán trước
- Ít có sự thay đổi lớn về nghiệp vụ khi hệ thống dần đi vào ổn định
- Không cần dữ liệu phân tán

<p style='text-align: justify;'>
&emsp;
Với những phân tích đánh giá như trên, nhóm quyết định lựa chọn sửa dụng hệ cơ sở dữ liệu quan hệ.
</p>

Chấp nhận nhược điểm tồn tại về cơ sở dữ liệu quan hệ:

- Khó khăn trong việc thiết kế
- Khó khăn khi gặp sự thay đổi về nghiệp vụ nhất định

#### 3.6.6.b Lựa chọn loại cơ sở dữ liệu

<p style='text-align: justify;'>
&emsp;
Nhóm sẽ chọn PostgreSQL để sử dụng trong dự án.
</p>

<center>
  <img width="400" src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_3_technology/img/postgre.png?raw=true">
  <p>Hình 3.6.6.b Logo PostgreSQL</p>
</center>

Ưu điểm của PostgreSQL so với các cơ sở dữ liệu quan hệ khác:

- PostgreSQL được dự đoán sẽ chiếm vị trí SQL Database phổ biến nhất của MySQL trong vòng 3 năm
- Hỗ trợ Analytic functions
- Ngoài các Data types chuẩn sql thì còn có array, hstore, object (người dùng định nghĩa)
- Full text search: không giới hạn
- Thuật toán JOIN sử lí tối ưu hơn
- DELETE nhanh hơn
- Hỗ trợ JSON

<div style="page-break-after: always;"></div>



