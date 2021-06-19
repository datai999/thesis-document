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
