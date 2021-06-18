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
  <img src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_3_theory/img/js.png?raw=true">
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
  <img src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_3_theory/img/ts.png?raw=true">
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
  <img width="400" src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_3_theory/img/dart.png?raw=true">
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
  <img src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_3_theory/img/react.png?raw=true">
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
  <img src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_3_theory/img/angular.png?raw=true">
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
  <img src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_3_theory/img/vue.png?raw=true">
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
  <img src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_3_theory/img/rav.png?raw=true">
  <p>Hình 3.4.4.a Frame-work Angular vs Vue vs React</p>
</center>

<p style='text-align: justify;'>
&emsp;
Ở các phần trước nhóm đã chọn Cross Platfrom App cho di động và ngôn ngữ front-end là JavaScript
nên app di động sẽ được viết bằng React Native. Với sự tương thích giữa các frame-work có thể thấy React có thể là lựa chọn tốt để đồng hành cùng React Native.
</p>

<center>
  <img src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_3_theory/img/react-native-web.png?raw=true">
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
  <img width="100" src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_3_theory/img/java.png?raw=true">
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
  <img width="500" src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_3_theory/img/springboot.png?raw=true">
  <p>Hình 3.5.1.b Logo Spring-boot</p>
</center>

<div style="page-break-after: always;"></div>

### **3.5.2 C# và ASP .NET**

<p style='text-align: justify;'>
&emsp;
C# là ngôn ngữ lập trình hiện đại, hướng đối tượng và được xây dựng trên nền tảng của hai ngôn ngữ mạnh nhất là C++ và Java.
</p>

<center>
  <img src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_3_theory/img/csharp.png?raw=true">
  <p>Hình 3.5.2.a Logo C#</p>
</center>

<p style='text-align: justify;'>
&emsp;
ASP.Net là một nền tảng phát triển web được cung cấp bởi Microsoft và được sử dụng để tạo các ứng dụng dựa trên web. 
ASP.Net được phát hành lần đầu tiên vào năm 2002.
Các ứng dụng ASP.Net cũng có thể được viết bằng nhiều ngôn ngữ .Net. Chúng bao gồm C#, VB.Net và J#.
</p>

Tính năng chính:

- Chạy mượt và ổn định cao hơn các ngôn ngữ khác.
- Tốc độ tải trang được tối ưu.
- Dễ dàng tùy chỉnh để tương thích với công nghệ mới.
- Độ bảo mật cao do kế thừa từ Java.

<center>
  <img src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_3_theory/img/dotnet.png?raw=true">
  <p>Hình 3.5.2.b Logo ASP .NET</p>
</center>

<div style="page-break-after: always;"></div>

### **3.5.3 Python và DJango**

<p style='text-align: justify;'>
&emsp;
Python là một trong những ngôn ngữ backend phát triển nhanh và phổ biến hàng đầu thế giới. 
Nhờ có cú pháp đơn giản, dễ hiểu cùng nhiều tài liệu hướng dẫn trực tuyến nên Python rất phổ biến cho các lập trình viên mới.
</p>

<center>
  <img width="200" src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_3_theory/img/python.png?raw=true">
  <p>Hình 3.5.3.a Logo Python</p>
</center>

<p style='text-align: justify;'>
&emsp;
Django là một frame-work Python cấp cao được xây dựng với ý tưởng kèm theo các "batteries included".
Có nghĩa là hầu hết mọi thứ mà một lập trình viên muốn có đều có sẵn mặc định.
Do đó, ít phải cài các plugin của bên thứ ba và yên tâm khi mọi thứ trong Django hoạt động nhịp nhàng cùng nhau.
Vì vậy Django rất phù hợp với các ứng dụng lớn và không nền sử dụng với ứng dụng nhỏ.
</p>

Tính năng chính:

- Khả năng tùy biến cao
- Không cần làm từ đầu, tốc độ phát triển nhanh
- Có thể mở rộng
- Cộng đồng lớn và tài liệu nhiều

<center>
  <img width="500" src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_3_theory/img/django.png?raw=true">
  <p>Hình 3.5.3.b Logo Django</p>
</center>

<div style="page-break-after: always;"></div>

### **3.5.4 JavaScript và ExpressJS**

<p style='text-align: justify;'>
&emsp;
Với NodeJS hỗ trợ để có thể lập trình ngôn ngữ Javascript để chạy trên server.
Với sự phổ biến của JavaScript, dễ học và sự hỗ trợ mạnh mẽ từ các frame-work thì NodeJS đang là xu thế dẫn đầu hiện nay.
</p>

<center>
  <img src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_3_theory/img/js.png?raw=true">
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

Tính năng chính của Express:

- API định tuyến tốt
- Tối giản
- Thiết lập rất dễ dàng và nó đơn giản để học
- Số lượng lớn các plugin có sẵn để sử dụng

<center>
  <img width="500" src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_3_theory/img/express.png?raw=true">
  <p>Hình 3.5.4.b Logo JavaScript</p>
</center>

<div style="page-break-after: always;"></div>



