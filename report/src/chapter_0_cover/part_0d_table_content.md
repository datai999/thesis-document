<center> <h2>Mục lục</h2> </center>

- 1 Tổng quan giới thiệu đề tài [9]

  - 1.1 Giới thiệu [10]
  - 1.2 Các vấn đề hiện tại [10]
  - 1.3 Mục tiêu của đề tài [11]
  - 1.4 Phạm vi của đề tài [11]
  - 1.5 Khó khăn và thử thách [11]

- 2 Cơ sở lý thuyết vào công nghệ [14]

  - 2.1 Các công nghệ phía Client Side (Front-end)

    - 2.1.1 Cross Platform App
    - 2.1.2 Ứng dụng đơn trang
    - 2.1.3 Frame-work React-native
    - 2.1.4 Frame-work Expo

  - 2.2 Các công nghệ phía Server Side (Back-end)

    - 2.2.1 Kiến trúc Restful API
    - 2.2.2 Kiến trúc MVC (Model-View-Controller)
    - 2.2.3 Ngôn ngữ Java và frame-work Spring-boot
    - 2.2.4 Kết nối cơ sở dữ liệu với Hibernate
    - 2.2.5 Hibernate search
    - 2.2.6 Unit test với Junit
    - 2.2.7 Cơ sở dữ liệu PostgreSQL
    - 2.2.8 Xác thực người bằng Firebase

  - 2.3 Công nghệ triển khai hệ thống

    - 2.3.1 Triển khai giao diện web với Github-page và gh-pages
    - 2.3.2 Build ứng dụng di động với Expo
    - 2.3.3 Triển khai server Heroku

- 3 Phân tích và thiết kế hệ thống

  - 3.1 Phân tích yêu cầu
    - 3.1.1 Yêu cầu người dùng
    - 3.1.2 Yêu cầu hệ thống
  - 3.2 Thiết kế hệ thống
    - 3.2.1 Kiến trúc chung
    - 3.2.2 Thiết kế use-case
  - 3.3 Thiết kế cơ sở dữ liệu
    - 3.3.1 Nền tảng thiết kế cơ sở dữ liệu
    - 3.3.2 Các bảng nhóm khác (br)
    - 3.3.3 Các bảng nhóm nhân sự (ps)
    - 3.3.4 Các bảng nhóm đề tài (tp)
    - 3.3.5 Các bảng nhóm điểm (sc)
  - 3.4 Các môi trường phát triển
  - 3.5 Thiết kế luồng giao diện
  - 3.6 Thiết kế một số chức năng
    - 3.6.1 Chức năng xác thực người dùng
    - 3.6.2 Chức năng xác thực các yêu cầu từ người dùng
    - 3.6.3 Chức năng thêm dữ liệu cũ

- 4 Hiện thực hệ thống

  - 4.1 Lưu trữ mã nguồn
  - 4.3 Chia nhiệm vụ
  - 4.4 Filter và Interception request
  - 4.5 Code back-end
    - 4.5.1 Phân chia source code
    - 4.5.2 Modal class diagram
    - 4.5.3 Service class diagram
    - 4.5.4 Controller class diagram
  - 4.6 CI-CD

- 5 Tổng kết và hướng phát triển
  - 5.1 Kết quả đạt được
  - 5.2 Thuận lợi - Khó khăn
  - 5.3 Hướng phát triển

<div style="page-break-after: always;"></div>

<center> <h2>Danh sách bảng</h2> </center>

- Chương 3: Lựa chọn công nghệ

  - Bảng 3.1.3: Lựa chọn loại ứng dụng [21]

- Chương 4: Lập trình UI web, android, ios với Expo

  - Bảng 4.1.2: So sánh React Native + React Native Web với Expo [44]

- Chương 5: Thiết kế kiến trúc hệ thống

  - 5.1: Thiết kế cơ sở dữ liệu
    - 5.1.1: Nền tảng thiết kế cơ sở dữ liệu
      - Bảng 5.1.1.c: Đặc tả chi tiết bảng BaseTable [49]
      - Bảng 5.1.1.d: Ví dụ về đa ngôn ngữ bằng json [49]
      - Bảng 5.1.1.e.1: Giảm dư thừa dữ liệu bằng array [50]
      - Bảng 5.1.1.e.2: Kết quả giảm dư thừa dữ liệu bằng array [50]
    - 5.1.2: Các bảng nhóm khác (br
      - Bảng 5.1.2.a.1: Đặc tả chi tiết bảng br_const_data [51]
      - Bảng 5.1.2.a.2: Ví dụ về bảng br_const_data [51]
      - Bảng 5.1.2.b.1: Đặc tả chi tiết bảng br_setting [52]
      - Bảng 5.1.2.b.2: Chuẩn bị bảng br_const_data [52]
      - Bảng 5.1.2.b.3: Ví dụ về bảng br_setting [52]
    - 5.1.3: Các bảng nhóm nhân sự (ps)
      - Bảng 5.1.3.a: Đặc tả chi tiết bảng PersonBaseTable [53]
      - Bảng 5.1.3.b: Đặc tả chi tiết bảng ps_teacher [54]
      - Bảng 5.1.3.c: Đặc tả chi tiết bảng ps_student [54]
      - Bảng 5.1.3.d.1: Chuẩn bị bảng br_const_data [54]
      - Bảng 5.1.3.d.2: Ví dụ về bảng PersonBaseTable [54]
      - Bảng 5.1.3.d.3: Chuẩn bị bảng br_const_data [55]
      - Bảng 5.1.3.d.4: Ví dụ về bảng ps_academy_staff [55]
      - Bảng 5.1.3.d.5: Ví dụ về bảng ps_teacher [55]
      - Bảng 5.1.3.d.6: Ví dụ về bảng ps_student [55]
    - 5.1.4 Các bảng nhóm đề tài (tp)
      - Bảng 5.1.4.a: Đặc tả chi tiết bảng tp_topic [57]
      - Bảng 5.1.4.b: Đặc tả chi tiết bảng tp_council [58]
      - Bảng 5.1.4.c: Đặc tả chi tiết bảng tp_topic_assign [58]
      - Bảng 5.1.4.d.1: Chuẩn bị bảng br_const_data [59]
      - Bảng 5.1.4.d.2: Ví dụ về bảng tp_topic [60]
      - Bảng 5.1.4.d.3: Ví dụ về bảng tp_council [60]
      - Bảng 5.1.4.d.4: Ví dụ về bảng tp_topic_assign [60]
    - 5.1.5 Các bảng nhóm điểm (sc)
      - Bảng 5.1.5.a: Đặc tả chi tiết bảng sc_criterion [62]
      - Bảng 5.1.5.b: Đặc tả chi tiết bảng sc_criterion_template [62]
      - Bảng 5.1.5.c: Đặc tả chi tiết bảng sc_score [62]
      - Bảng 5.1.5.d.1: Chuẩn bị bảng br_const_data [63]
      - Bảng 5.1.5.d.2: Chuẩn bị bảng br_setting [63]
      - Bảng 5.1.5.d.3: Ví dụ về bảng sc_criterion [63]
      - Bảng 5.1.5.d.4: Ví dụ về bảng sc_criterion_template [63]
      - Bảng 5.1.5.d.5: Chuẩn bị bảng br_const_data [64]
      - Bảng 5.1.5.d.6: Chuẩn bị bảng tp_council [64]
      - Bảng 5.1.5.d.7: Chuẩn bị bảng tp_topic_assign [64]
      - Bảng 5.1.5.d.8: Bảng tính toán điểm số [64]
      - Bảng 5.1.5.d.9: Ví dụ về bảng sc_score [64]
  - 5.2: Thiết kế API
    - Bảng 5.2.1: Các API cơ bản [65]
    - Bảng 5.2.2: Các API khác [66]

- Chương 6: Hiện thực hệ thống

  - Bảng 6.3: Phân chia nhiệm vụ [75]

</br>
</br>
</br>

  <center><h2>Danh sách sơ đồ</h2></center>

- Chương 5: Thiết kế kiến trúc hệ thống

  - Sơ đồ 5.1.1.b: Mối quan hệ Foreign key giữa các nhóm table [48]
  - Sơ đồ 5.1.2: ERD diagram của nhóm br [51]
  - Sơ đồ 5.1.3: ERD diagram của nhóm ps [53]
  - Sơ đồ 5.1.4: ERD diagram của nhóm tp [56]
  - Sơ đồ 5.1.5: ERD diagram của nhóm sc [61]
  - Sơ đồ 5.3: UI flow chart [67]
  - Sơ đồ 5.4.1: Login sequence diagra [68]
  - Sơ đồ 5.4.2: Valid request sequence diagram [69]
  - Sơ đồ 5.4.3: Import data sequence diagram [70]

- Chương 6: Hiện thực hệ thống
  - Sơ đồ 6.2: Environment diagram [74]
  - Sơ đồ 6.4: Valid request implement sequence diagram [76]
  - 6.5 Code back-end
    - Sơ đồ 6.5.1: Phân chia source code [77]
    - Sơ đồ 6.5.2: Modal class diagram [77]
    - Sơ đồ 6.5.3: Service class diagram [78]
    - Sơ đồ 6.5.4: Controller class diagram [78]
  - Sơ đồ 6.6: Triển khai CI-CD [79]

<div style="page-break-after: always;"></div>

<center> <h2>Danh sách hình ảnh</h2> </center>

- Hình 1: Tổng quan giới thiệu đề tài [9]
- Hình 2: Phân tích yêu cầu đề tài [12]
- Hình 3: Lựa chọn công nghệ [14]
  - Hình 3.1.1.a: Web Application [15]
  - Hình 3.1.2.b: Web-base app: m.facebook.com [16]
  - Hình 3.1.2: Native App, Hybrid App và Cross Platform App [17]
  - Hình 3.1.2.a: Native App [18]
  - Hình 3.1.2.b: Hybrid App [19]
  - Hình 3.1.2.c: Cross Platform App [20]
  - Hình 3.3.1: Logo JavaScript [23]
  - Hình 3.3.2: Logo TypeScript [24]
  - Hình 3.3.3: Logo Dart [25]
  - Hình 3.4.1: Logo Frame-work React [26]
  - Hình 3.4.2: Logo Frame-work Angular [27]
  - Hình 3.4.3: Logo Frame-work Vue [28]
  - Hình 3.4.4.a: Frame-work Angular vs Vue vs React [29]
  - Hình 3.4.4.b: Dùng React-native code web [29]
  - Hình 3.5.1.a: Logo Java [30]
  - Hình 3.5.1.b: Logo Spring-boot [30]
  - Hình 3.5.2.a: Logo C# [31]
  - Hình 3.5.2.b: Logo ASP .NET [31]
  - Hình 3.5.3.a: Logo Python [32]
  - Hình 3.5.3.b: Logo Django [32]
  - Hình 3.5.4.a: Logo JavaScript [33]
  - Hình 3.5.4.b: Logo Express [33]
  - Hình 3.6: Phân loại cơ sở dữ liệu [35]
  - Hình 3.6.2.a: Logo Mongo [37]
  - Hình 3.6.2.b: Logo Couchbase [37]
  - Hình 3.6.3: Logo Redis vs Logo Memcached [38]
  - Hình 3.6.4: Logo Cassandra vs Logo Hbase [39]
  - Hình 3.6.5: Logo Elasticsearch [40]
  - Hình 3.6.6: Logo PostgreSQL [41]
- Hình 4: Lập trình UI web, android, ios với Expo [42]
  - Hình 4.1.2: React Native Web [43]
  - Hình 4.2.1: Logo hệ sinh thái Expo [45]
  - Hình 4.2.2: Màn hình web(trái) và Màn hình terminal (phải) khi start Expo [46]
- Hình 5: Thiết kế kiến trúc hệ thống [47]
- Hình 6: Hiện thực hệ thống [71]
  - Hình 6.1.a Logo Markdown [72]
  - Hình 6.1.b Logo Heroku [73]
  - Hình 6.1.c Logo Firebase [73]
  - Hình 6.1.d Expo web Builds [73]
  - Hình 6.2 Trang web Expo app [74]
- Hình 7: Tổng kết và hướng phát triển [80]

<div style="page-break-after: always;"></div>
