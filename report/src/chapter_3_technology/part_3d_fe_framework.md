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
