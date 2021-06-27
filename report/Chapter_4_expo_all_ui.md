# **4 Lập trình UI web, android, ios với Expo**

<div style="page-break-after: always;"></div>

## **4.1 Hoàn cảnh và ý tưởng**

<p style='text-align: justify;'>
&emsp;
Ở những giai đoạn đầu của dự án, nhóm đối diện phải khó khăn lớn về front-end vì những lý do sau:
</p>

- Đội ngũ phát triển 1 thành viên và không hề có kinh nghiệm front-end.
- Quá nhiều frame-work và library UI để lựa chọn.
- Hiện thực trên nhiều nền tảng khiến khối lượng công việc front-end trở nên rất nhiều so với back-end.

### **4.1.1 Từ web đến di động**

<p style='text-align: justify;'>
&emsp;
Ý tưởng ban đầu giải quyết vấn đề trên là tạo dựng một sản phẩm web trong giai đoạn đề cương.
Sau đó mở rộng bằng cách nhúng web đó xuống di động bằng webview.
Tuy nhiên, giải pháp này vướng phải nhiều vấn đề như sau:
</p>

- Trải nghiệm tệ ở ứng dụng di động.
- Hiệu năng của ứng dụng cũng giảm rất nhiều.
- Ngoài ra nó còn phụ thuộc rất lớn vào trang web hỗ trợ responsive.
- Các components UI phức tạp rất khó tái sử dụng.
- Các components UI nhỏ khi đưa xuống di động thì bị "phình ra" khó kiểu soát.

> Đây chưa thực sự là một giải pháp tốt.

### **4.1.2 Từ di động đến web**

<p style='text-align: justify;'>
&emsp;
Phương án này là dùng Flutter hoặc React Native code di động, sau đó chuyển code lên web.
Flutter thì có Flutter Web, tương tự React Native có React Native Web dùng để code web.
</p>

Những điểm lợi thế so với dùng webview

- Đáp ứng trải nghiệm ứng dụng di động tốt.
- Hiệu năng của ứng dụng được đảm bảo.
- Giảm phụ thuộc vào trang web xuống rất nhiều.
- Có thể tái sử dụng các components UI nhỏ và lớn khi chuyển từ di động đến web.

<center>
  <img width="500" src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_4_expo/img/react-native-web.png?raw=true">
  <p>Hình 4.1.2. React Native Web</p>
</center>

<div style="page-break-after: always;"></div>

<p style='text-align: justify;'>
&emsp;
Qua trải nghiệm React Native Web chưa thật sự thỏa mãn sự mong đợi từ nhóm.
</br>
&emsp;
Nhóm đã tìm được Expo, một frame-work JavaScript khác có nhiều điểm nổi bật hơn bộ đôi React Native + React Native Web.
</br>
&emsp;
Sau đây là một số so sánh về các frame-work
</p>

|                                                      | React Native + React Native Web  | Expo                                     |
| ---------------------------------------------------- | -------------------------------- | ---------------------------------------- |
| Android Studio and XCode để chạy code tốt            | Cần                              | Chỉ cần terminal                         |
| Máy Mac                                              | Cần                              | Không cần                                |
| Kết nối thiết bị test                                | Cáp USB                          | Cáp USB hoặc chia sẽ qua mạng LAN        |
| Chia sẽ app                                          | Build file .apk .ipa             | Thêm phương thức share QR code hoặc link |
| Cung cấp JS APIs (Push-Notifications, Asset Manager) | Cài thủ công với npm             | Dùng gói của Expo cung cấp               |
| Thời gian cấu hình                                   | Phức tạp                         | Chỉ cần install và chạy bằng command     |
| Build app để thử nghiệm                              | Cần                              | Không cần                                |
| Phân phối app đến store                              | Thủ công                         | Dùng command của Expo cung cấp           |
| Viết code Native như Java/Objective-C/Swift          | Có thể                           | Không thể                                |
| Kích thước ứng dụng ban đầu                          | Nhỏ và gắn từng phần vào nhờ npm | Lớn nhưng cung cấp đầy đủ                |
| Khả năng tương tác với các thư viện khác             | Tốt                              | Hạn chế vì ràng buộc với Expo            |
| Debug                                                | Bình thường                      | Khó khăn hơn vì gom nhiều nền tảng chung |
| Build file local                                     | Có thể                           | Phải đẩy lên cloud để Expo build         |

<p style='text-align: justify;'>
&emsp;
Chấp nhận kích thước ứng dụng ban đầu lớn và khó debug giữa các nền tảng.
</p>

<p style='text-align: justify;'>
&emsp;
Với ứng dụng chấm điểm không cần quá thiệp quá sâu vào từng nền tảng cũng như UI phức tạp để vay mượn từ các library khác.
Nhóm tin rằng hệ sinh thái của Expo là lựa chọn hợp lý cho dự án này.
</p>

<p style='text-align: justify;'>
&emsp;
Với những phân tích trên nhóm sẽ dùng Expo để dựng toàn bộ UI cho dự án.
</p>

<div style="page-break-after: always;"></div>

## **4.2 Expo**

### **4.2.1 Giới thiệu Expo**

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

### **4.2.2 Chạy thử ứng dụng từ Expo**

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



