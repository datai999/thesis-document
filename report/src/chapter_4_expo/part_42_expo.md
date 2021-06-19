### **4.2 Expo**

#### 4.2.1 Giới thiệu Expo

<p style='text-align: justify;'>
&emsp;
Expo là một framework được xây dựng xung quanh React Native để giúp bạn xây dựng các dự án iOS và Android bằng JavaScript và React và Web.
Nó giống như Laravel hay Symphony cho các nhà phát triển PHP, hoặc Ruby on Rails cho các nhà phát triển Ruby. 
Expo cung cấp một lớp nằm trên cùng của React Native API để giúp chúng dễ sử dụng và quản lý.

</p

<center>
  <img width="300" src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_4_expo/img/expo.png?raw=true">
  <p>Hình 4.2.1. Logo hệ sinh thái Expo</p>
</center>

<p style='text-align: justify;'>
&emsp;
Expo cung cấp các công cụ giúp lập trình viên dễ dàng khởi tạo và kiểm thử các ứng dụng React Native. 
Sau cùng, nó cung cấp các thành phần UI và các dịch vụ thường chỉ có sẵn khi cài đặt một thành phần React Native của bên thứ ba. 
Tất cả đều được cung cấp thông qua Expo SDK.
</p

<p style='text-align: justify;'>
&emsp;
Expo không phụ thuộc vào IDE, lập trình viên có thể code với bất cứ phần mềm chỉnh sửa văn bản nào.
</p

<p style='text-align: justify;'>
&emsp;
Expo không cần config, các bước chạy rất đơn giản
</p

<div style="page-break-after: always;"></div>

#### 4.2.2 Chạy thử ứng dụng từ Expo

Cài đặt Expo

```
npm install --global expo-cli
```

Khởi tạo project expo

```
expo init demoReactNativeApp
cd demoReactNativeApp
```

Chạy project

```
expo start
```

<center>
  <img src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_4_expo/img/start.png?raw=true">
  <p>Hình 4.2.2.a Màn hình web(trái) và Màn hình terminal (phải) khi start Expo</p>
</center>

<p style='text-align: justify;'>
&emsp;
&emsp;Lập trình viên hoặc người dùng thử cần cài đặt ứng dụng Expo Go trên CH Play hoặc App Store để quét các QR Code dến từ Expo.
Sau khi quét, Expo sẽ tải mã JavaScript xuống di động vào start nó thành app di động.
Lập trình viên có thể debug trên điện thoại thông qua mạng LAN mà không cần dây USB tương ứng.
Sau khi thoát, Expo Go không hề để lại bản dựng nào trên điện thoại.
</p>

<p style='text-align: justify;'>
&emsp;
Chúng ta thấy sẽ có các option cho chúng ta chạy build ở các nền tảng khác nhau và expo còn support chia sẽ ứng dụng qua email, SMS 
hay puslish lên trang web https://expo.io/ để build .apk hay đẩy ra các store.
</p>

<p style='text-align: justify;'>
&emsp;
Lập trình viên cũng có thể xem log của từng thiết bị tại màn hình này.
</p>

<div style="page-break-after: always;"></div>
