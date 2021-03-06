# **5 Thiết kế kiến trúc hệ thống**

<p style='text-align: justify;'>
&emsp;
Thiết kế kiến trúc hệ thống có vai trò rất quan trọng trong quy trình xây dựng phần mềm 
vì có được cái nhìn đầy đủ, đúng đắn, chính xác về hệ thống sẽ xây dựng trong tương lai 
nhằm thuận lợi cho việc sửa chữa, bổ sung và phát triển hệ thống khi có sự thay đổi. 
Hơn thế nữa, thiết kế còn tránh được những sai lầm trong cài đặt 
hay lạc lối trong trong quá trình thi công phần mềm.
</p>

</br>

<center>
 <img src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_5_achitechture_design/img/system-rule.png?raw=true">
  <p>Hình 5: Thiết kế kiến trúc hệ thống</p>
</center>

<div style="page-break-after: always;"></div>

## **5.1 Thiết kế cơ sở dữ liệu**

### **5.1.1 Nền tảng thiết kế cơ sở dữ liệu**

#### 5.1.1.a Chia nhóm các bảng

&emsp;Dựa vào yêu cầu của đề tài thì nhóm sẽ phân loại các table của database ra làm 4 nhóm

- Nhóm các table liên quan đến nhân sự (person), kí hiệu là **ps**
- Nhóm các table liên quan đến chủ đề (topic), kí hiệu là **tp**
- Nhóm các table liên quan đến điểm (score), kí hiệu là **sr**
- Nhóm các table còn lại (break), kí hiệu là **br**

&emsp;Tên các table sẽ được bắt đầu bằng kí hiệu thể hiện cho nhóm của mình.

Ví dụ: Table ps_teacher thuộc nhóm liên quan đến nhân sự và chứa dữ liệu của giảng viên.

#### 5.1.1.b Mối quan hệ giữa các nhóm bảng

&emsp;Mối quan hệ giữa các khóa ngoại (Foreign key) của các table trong nhóm được thể hiện bằng lược đồ sau.

<center>
  <img src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_5_achitechture_design/img/group-table.png?raw=true">
  <p>Sơ đồ 5.1.1.b: Mối quan hệ Foreign key giữa các nhóm table</p>
</center>

<p style='text-align: justify;'>
&emsp;
Với lược đồ này, nhóm sẽ quy định rằng các bảng thuộc nhóm có mũi tên đi ra có thể có Foreign key reference
đến các bảng thuộc nhóm có mũi tên đi vào tương ứng.
</p>

&emsp;Vậy sẽ có 3 luật thiết kế Foreign key giữa các nhóm sẽ được tuân thủ:

- Tất cả các bảng ở mọi nhóm có thể có Foreign key đến các bảng thuộc nhóm **br**
- Các bảng thuộc nhóm **tp** có thể có Foreign key đến các bảng thuộc nhóm **ps**
- Các bảng thuộc nhóm **sc** có thể có Foreign key đến các bảng thuộc nhóm **tp** và **ps**

<div style="page-break-after: always;"></div>

#### 5.1.1.c Bảng cơ sở

Mọi table đều extends **BaseTable** chứa các thông tin sau

**Dữ liệu:** Các dữ liệu cơ bản mọi record đều có

<center><h4>Bảng 5.1.1.c: Đặc tả chi tiết bảng BaseTable</h4></center>

| Trường     | Kiểu dữ liệu                | Chứa null | Mặc định                  | Mô tả                         |
| ---------- | --------------------------- | --------- | ------------------------- | ----------------------------- |
| id         | bigint                      | không     | auto increment            | Định danh mỗi dòng trong bảng |
| deleted    | boolean                     | không     | false                     | Xóa logic dòng                |
| created_at | timestamp without time zone | không     | thời gian tạo record      | Thời gian tạo record          |
| updated_at | timestamp without time zone | không     | thời gian cập nhật record | Thời gian cập nhật record     |
| created_by | bigint                      | không     | không                     | Mã số người tạo record        |
| updated_by | bigint                      | không     | không                     | Mã số người cập nhật record   |

<p style='text-align: justify;'>
&emsp;
Với cách thiết kế này, nhóm sẽ sẽ dụng duy nhất id làm Primary key cho toàn bộ bảng 
và không sử dụng khóa chính tổng hợp (composite-key).
Nếu cần thêm field để xác định danh cho dòng, nhóm sẽ dùng ràng buộc (constraint) unit.
</p>

#### 5.1.1.d Đa ngôn ngữ bằng json

<p style='text-align: justify;'>
&emsp;PostgreSQL có hỗ trợ kiểu dữ liệu JSON, nhóm sẽ tận dùng để lưu trữ đa ngôn ngữ.
</p>

Ví dụ

<h4>Bảng 5.1.1.d: Ví dụ về đa ngôn ngữ bằng json</h4>

| id  | multi_lang_field                                   |
| --- | -------------------------------------------------- |
| 1   | {"en":"Computer Science","vi":"Khoa học máy tính"} |

<div style="page-break-after: always;"></div>

#### 5.1.1.e Giảm dư thừa dữ liệu bằng array

<p style='text-align: justify;'>
&emsp;Các thiết kế từng bảng sẽ tuân thủ thêm nguyên tắc giảm số dòng (record)
khi có thể bằng các tận dụng array của PosgreSQL
</p>

Ví dụ một bảng sau

<h4>Bảng 5.1.1.e.1: Giảm dư thừa dữ liệu bằng array</h4>

| id  | Loại sản phẩm | Tên sản phẩm |
| --- | ------------- | ------------ |
| 1   | A             | Sting        |
| 2   | A             | Pepsi        |
| 3   | A             | Coca         |

Sẽ được chuyển thành

<h4>Bảng 5.1.1.e.2: Kết quả giảm dư thừa dữ liệu bằng array</h4>

| id  | Loại sản phẩm | Tên sản phẩm          |
| --- | ------------- | --------------------- |
| 1   | A             | [String, Pepsi, Coca] |

<p style='text-align: justify;'>
&emsp;Cách thiết kế này giúp giảm số lượng dữ liệu dư thừa, trách group by trong câu query.
</p>

<div style="page-break-after: always;"></div>

### **5.1.2 Các bảng nhóm khác (br)**

<center>
  <img src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_5_achitechture_design/img/group-br.png?raw=true">
  <p>Sơ đồ 5.1.2: ERD diagram của nhóm br</p>
</center>

#### 5.1.2.a Bảng br_const_data

**Dữ liệu:** Các dữ liệu ít hoặc gần như không thay đổi

**Ràng buộc:** type & value là unit

<center><h4>Bảng 5.1.2.a.1: Đặc tả chi tiết bảng br_const_data</h4></center>

| Trường | Kiểu dữ liệu | Chứa null | Mặc định | Mô tả                                       |
| ------ | ------------ | --------- | -------- | ------------------------------------------- |
| type   | string       | không     | không    | Tên của loại dữ liệu ít thay đổi            |
| value  | json         | không     | không    | Giá trị đa ngôn ngữ của dữ liệu ít thay đổi |
| no     | integer      | có        | không    | Thứ tự hiển thị trên UI                     |

<h4>Bảng 5.1.2.a.2: Ví dụ về bảng br_const_data</h4>

| id  | type   | value                                | no  |
| --- | ------ | ------------------------------------ | --- |
| 1   | degree | {"en": "Bachelor", "vi": "Cử nhân"}  | 1   |
| 2   | degree | {"en": "Master", "vi": "Thạc sĩ"}    | 2   |
| 3   | degree | {"en": "Doctor", "vi": "Tiến sĩ"}    | 3   |
| 4   | degree | {"en": "Professor", "vi": "Giáo sư"} | 4   |

<div style="page-break-after: always;"></div>

#### 5.1.2.b Bảng br_setting

**Dữ liệu:** Các dữ liệu cài đặt chung của hệ thống

**Ràng buộc:** name_id là unit

<h4>Bảng 5.1.2.b.1: Đặc tả chi tiết bảng br_setting</h4>

| Trường    | Kiểu dữ liệu | Chứa null | Mặc định | Mô tả                      |
| --------- | ------------ | --------- | -------- | -------------------------- |
| name_id   | string       | không     | không    | Tên của setting            |
| ref_table | string       | không     | không    | Table chứa giá trị setting |
| ref_id    | array-bigint | không     | không    | Các record được setting    |

**Ví dụ:** Chỉ một số cấp bậc học vấn được hiển thị trên màn hình

<h4>Bảng 5.1.2.b.2: Chuẩn bị bảng br_const_data</h4>

| id  | type    | value                                                       | no   |
| --- | ------- | ----------------------------------------------------------- | ---- |
| 1   | degree  | {"en": "Bachelor", "vi": "Cử nhân"}                         | 1    |
| 2   | degree  | {"en": "Master", "vi": "Thạc sĩ"}                           | 2    |
| 3   | degree  | {"en": "Doctor", "vi": "Tiến sĩ"}                           | 3    |
| 4   | degree  | {"en": "Professor", "vi": "Giáo sư"}                        | 4    |
| 5   | setting | {"en": "Degree visible", "vi": "Trình độ học vấn hiển thị"} | null |

<h4>Bảng 5.1.2.b.3: Ví dụ về bảng br_setting</h4>

| id  | name_id | ref_table     | ref_id |
| --- | ------- | ------------- | ------ |
| 1   | 5       | br_const_data | [2,3]  |

<div style="page-break-after: always;"></div>

### **5.1.3 Các bảng nhóm nhân sự (ps)**

Mọi table thuộc nhóm **ps** đều extends **PersonBaseTable**, **PersonBaseTable** extend **BaseTable**

<center>
  <img src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_5_achitechture_design/img/group-ps.png?raw=true">
  <p>Sơ đồ 5.1.3: ERD diagram của nhóm ps</p>
</center>

#### 5.1.3.a Bảng PersonBaseTable

Là bảng cơ sở của nhóm **ps**. Nó là bảng ảo không có thực trong database. Các bảng thuộc nhóm **ps** đều có tất cả các field thuộc bảng này.

**Dữ liệu:** Thông tin cơ bản của nhân sự

**Ràng buộc:** code là unit

<h4>Bảng 5.1.3.a: Đặc tả chi tiết bảng PersonBaseTable<h4>

| Trường    | Kiểu dữ liệu | Chứa null | Mặc định | Mô tả                            |
| --------- | ------------ | --------- | -------- | -------------------------------- |
| code      | string       | không     | không    | Mã số nhân viên, mã số sinh viên |
| name      | string       | có        | không    | Tên đầy đủ                       |
| gender_id | bigint       | có        | không    | Giới tính                        |
| email     | string       | không     | không    | HCMUT mail                       |
| phone     | string       | có        | không    | Số điện thoại                    |

<div style="page-break-after: always;"></div>

#### 5.1.3.b Bảng ps_academy_staff

**Dữ liệu:** Thông tin giáo vụ

Các field của bảng này bằng các field thuộc bảng BaseTable + field thuộc bảng PersonBaseTable

#### 5.1.3.b Bảng ps_teacher

**Dữ liệu:** Thông tin giảng viên

<h4>Bảng 5.1.3.c: Đặc tả chi tiết bảng ps_teacher<h4>

| Trường                | Kiểu dữ liệu | Chứa null | Mặc định | Mô tả                         |
| --------------------- | ------------ | --------- | -------- | ----------------------------- |
| subject_department_id | bigint       | có        | không    | Phòng ban giảng viên làm việc |
| degree_id             | bigint       | có        | không    | Học vị của giảng viên         |

#### 5.1.3.c Bảng ps_student

**Dữ liệu:** Thông tin sinh viên

<h4>Bảng 5.1.3.c: Đặc tả chi tiết bảng ps_student<h4>

| Trường              | Kiểu dữ liệu | Chứa null | Mặc định | Mô tả                         |
| ------------------- | ------------ | --------- | -------- | ----------------------------- |
| education_method_id | bigint       | có        | không    | Phương thức đào tạo sinh viên |
| major               | bigint       | có        | không    | Chuyên ngành của sinh viên    |

#### 5.1.3.d Ví dụ về bảng PersonBaseTable, ps_academy_staff, ps_teacher, ps_student

**Ví dụ về bảng PersonBaseTable:**

<h4>Bảng 5.1.3.d.1: Chuẩn bị bảng br_const_data</h4>

| id  | type   | value                        | no   |
| --- | ------ | ---------------------------- | ---- |
| 1   | gender | {"en": "Male", "vi": "Name"} | null |
| 2   | gender | {"en": "Female", "vi": "Nữ"} | null |

<h4>Bảng 5.1.3.d.2: Ví dụ về bảng PersonBaseTable</h4>

| id  | code    | name               | gender_id | email            | phone      |
| --- | ------- | ------------------ | --------- | ---------------- | ---------- |
| 1   | 1713015 | Nguyễn Đức Anh Tài | 1         | tai@hcmut.edu.vn | 0905345670 |

<div style="page-break-after: always;"></div>

**Ví dụ về bảng ps_academy_staff, ps_teacher, ps_student:**

<h4>Bảng 5.1.3.d.3: Chuẩn bị bảng br_const_data</h4>

| id  | type              | value                                                   | no   |
| --- | ----------------- | ------------------------------------------------------- | ---- |
| 1   | gender            | {"en": "Male", "vi": "Name"}                            | null |
| 2   | gender            | {"en": "Male", "vi": "Name"}                            | null |
| 3   | degree            | {"en": "Bachelor", "vi": "Cử nhân"}                     | 1    |
| 4   | degree            | {"en": "Master", "vi": "Thạc sĩ"}                       | 2    |
| 5   | degree            | {"en": "Doctor", "vi": "Tiến sĩ"}                       | 3    |
| 7   | subjectDepartment | {"en":"Information System", "vi":"Hệ thống thông tin"}  | null |
| 8   | subjectDepartment | {"en":"Software Technology", "vi":"Công nghệ phần mềm"} | null |
| 9   | subjectDepartment | {"en":"Systems and Networks", "vi":"Hệ thống và mạng"}  | null |
| 10  | subjectDepartment | {"en":"Computer Science","vi":"Khoa học máy tính"}      | null |
| 11  | subjectDepartment | {"en":"Computer Engineering","vi":"Kỹ thuật máy tính"}  | null |
| 12  | educationMethod   | {"en":"Formal","vi":"Chính quy"}                        | null |
| 13  | major             | {"en":"Computer Science","vi":"Khoa học máy tính"}      | null |

<h4>Bảng 5.1.3.d.4: Ví dụ về bảng ps_academy_staff</h4>

| id  | code    | name               | gender_id | email            | phone      |
| --- | ------- | ------------------ | --------- | ---------------- | ---------- |
| 1   | 1713015 | Nguyễn Đức Anh Tài | 1         | tai@hcmut.edu.vn | 0905345670 |

<h4>Bảng 5.1.3.d.5: Ví dụ về bảng ps_teacher</h4>

| id  | code    | name               | gender_id | email            | phone      |
| --- | ------- | ------------------ | --------- | ---------------- | ---------- |
| 1   | 1713015 | Nguyễn Đức Anh Tài | 1         | tai@hcmut.edu.vn | 0905345670 |

| id  | subject_department_id | degree_id |
| --- | --------------------- | --------- |
| 1   | 7                     | 4         |

<h4>Bảng 5.1.3.d.6: Ví dụ về bảng ps_student</h4>

| id  | code    | name               | gender_id | email            | phone      |
| --- | ------- | ------------------ | --------- | ---------------- | ---------- |
| 1   | 1713015 | Nguyễn Đức Anh Tài | 1         | tai@hcmut.edu.vn | 0905345670 |

| id  | education_method_id | major |
| --- | ------------------- | ----- |
| 1   | 12                  | 13    |

<div style="page-break-after: always;"></div>

### **5.1.4 Các bảng nhóm đề tài (tp)**

<center>
  <img src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_5_achitechture_design/img/group-tp.png?raw=true">
  <p>Sơ đồ 5.1.4: ERD diagram của nhóm tp</p>
</center>

<div style="page-break-after: always;"></div>

#### 5.1.4.a Bảng tp_topic

**Dữ liệu:** Thông tin về đề tài

**Ràng buộc:** min_student_take, max_student_take >= 1

<center><h4>Bảng 5.1.4.a: Đặc tả chi tiết bảng tp_topic</h4></center>

| Trường              | Kiểu dữ liệu | Chứa null | Mặc định | Mô tả                          |
| ------------------- | ------------ | --------- | -------- | ------------------------------ |
| code                | string       | không     | không    | Mã đề tài                      |
| name                | json         | có        | không    | Tên đề tài                     |
| semester            | integer      | có        | không    | Học kỳ bắt đầu                 |
| major_id            | bigint       | có        | không    | Chuyên ngành của đề tài        |
| education_method_id | bigint       | có        | không    | Phương thức đào tạo của đề tài |
| min_student_take    | integer      | có        | không    | Số sinh viên tối thiểu         |
| max_student_take    | integer      | có        | không    | Số sinh viên tối đa            |
| description         | json         | có        | không    | Mô tả đề tài                   |
| topic_task          | json         | có        | không    | Nhiệm vụ giai đoạn đề cương    |
| thesis_task         | json         | có        | không    | Nhiệm vụ giai đoạn luận văn    |
| note                | text         | có        | không    | Ghi chú thêm về đề tài         |

<div style="page-break-after: always;"></div>

#### 5.1.4.b Bảng tp_council

**Dữ liệu:** Thông tin về hội đồng

<center><h4>Bảng 5.1.4.b: Đặc tả chi tiết bảng tp_council</h4></center>

| Trường                | Kiểu dữ liệu          | Chứa null | Mặc định | Mô tả                               |
| --------------------- | --------------------- | --------- | -------- | ----------------------------------- |
| subject_department_id | bigint                | có        | không    | Phòng ban của hội đồng              |
| reserveRoom           | string                | có        | không    | Phòng đặt cho ngày bảo vệ           |
| reserveDate           | date                  | có        | không    | Ngày bảo vệ luận văn                |
| startTime             | time without timezone | có        | không    | Thời gian bắt đầu bảo vệ            |
| endTime               | time without timezone | có        | không    | Thời gian dự kiến kết thúc          |
| role_id               | bigint                | có        | không    | Các vai trò trong hội đồng          |
| teacher_code          | array-string          | có        | không    | Mã giảng viên tương ứng với vai trò |
| note                  | text                  | có        | không    | Ghi chú thêm về hội đồng            |

#### 5.1.4.c Bảng tp_topic_assign

**Dữ liệu:** Thông tin về việc gán các nghiệp vụ cho đề tài

<center><h4>Bảng 5.1.4.c: Đặc tả chi tiết bảng tp_topic_assign</h4></center>

| Trường               | Kiểu dữ liệu | Chứa null | Mặc định | Mô tả                               |
| -------------------- | ------------ | --------- | -------- | ----------------------------------- |
| topic_id             | bigint       | không     | không    | Đề tài cần được gán nghiệp vụ       |
| semester             | integer      | không     | không    | Học kì được gán của đề tài          |
| status_id            | bigint       | không     | không    | Trạng thái hiện tại của đề tài      |
| execute_student_code | array-string | có        | không    | Mã những sinh viên thực hiện đề tài |
| guide_teacher_code   | array-string | có        | không    | Mã những giảng viên hướng dẫn       |
| review_teacher_code  | array-string | có        | không    | Mã những giảng viên phản biện       |
| council_id           | bigint       | có        | không    | Id của hội đồng                     |
| note                 | text         | có        | không    | Ghi chú thêm                        |

<div style="page-break-after: always;"></div>

#### 5.1.4.d Ví dụ về bảng tp_topic, tp_council, tp_topic_assign

<p style='text-align: justify;'>
&emsp;
Một đề tài có tên tiếng việt là "ABC" tên tiếng anh là "A", mã đề tài là 123, được đăng ký ở học kỳ 201, dành cho tối đa 3 sinh viên khoa học máy tính chính quy.
Nhiệm vụ giai đoạn đề cương là: thiết kế db. Nhiệm vụ giai đoạn luận văn là: code.
</p>

<p style='text-align: justify;'>
&emsp;
Ở học kỳ 201, đề tài này được hướng dẫn bởi 1 giảng viên có mã số là 0001 
và được thực hiện bởi 2 sinh viên có mã số là 1713015 và 1713016.
Cuối học kì được phản biện bởi giảng viên có mã số là 0002
</p>

<p style='text-align: justify;'>
&emsp;
Ở học kì 202, vì dịch covid nên nhóm sinh viên xin bảo lưu đề tài.
</p>

<p style='text-align: justify;'>
&emsp;
Ở học kì 203, vì lý do cá nhân, sinh viên có mã số 1713016 rút khỏi đề tài.
Sinh viên mã số 1713015 tiếp tục đề tài, trải qua sự phản biện của 2 giảng viên có mã số 0002 và 0003.
Sau đó sinh viên đã bảo vệ đề tài dưới hội đồng của phòng ban hệ thống thông tin
gồm chủ tịch mã số 1111, thư ký mã số 1113 tại phòng 404-H6.
</p>

<h4>Bảng 5.1.4.d.1: Chuẩn bị bảng br_const_data</h4>

| id  | type              | value                                                   | no   |
| --- | ----------------- | ------------------------------------------------------- | ---- |
| 1   | major             | {"en":"Computer Science","vi":"Khoa học máy tính"}      | 1    |
| 2   | major             | {"en":"Computer Engineering","vi":"Kỹ thuật máy tính"}  | 2    |
| 3   | major             | {"en":"Interdisciplinary","vi":"Liên ngành"}            | 3    |
| 4   | educationMethod   | {"en":"Formal","vi":"Chính quy"}                        | null |
| 5   | educationMethod   | {"en":"advanced","vi":"Tiên tiến chất lượng cao"}       | null |
| 6   | topicStatus       | {"en":"Outline","vi":"Đề cương"}                        | 1    |
| 7   | topicStatus       | {"en":"Thesis","vi":"Luận văn"}                         | 2    |
| 8   | topicStatus       | {"en":"Reserve","vi":"Bảo lưu"}                         | 3    |
| 9   | subjectDepartment | {"en":"Information System", "vi":"Hệ thống thông tin"}  | null |
| 10  | subjectDepartment | {"en":"Software Technology", "vi":"Công nghệ phần mềm"} | null |
| 11  | councilRole       | {"en":"Secretary 1", "vi":"Thư ký 1"}                   | 3    |
| 12  | councilRole       | {"en":"Secretary 2", "vi":"Thư ký 2"}                   | 4    |
| 13  | councilRole       | {"en":"Chairman", "vi":"Chủ tịch"}                      | 1    |
| 14  | councilRole       | {"en":"Vice Chairman", "vi":"Phó chủ tịch"}             | 2    |

<div style="page-break-after: always;"></div>

<h4>Bảng 5.1.4.d.2: Ví dụ về bảng tp_topic</h4>

| id  | code | name                    | semester | major_id | education_method_id | description |
| --- | ---- | ----------------------- | -------- | -------- | ------------------- | ----------- |
| 1   | 123  | {"en": "A", "vi": "ABC" | 201      | 1        | 4                   | null        |

| id  | min_student_take | max_student_take | topic_task                        | thesis_task                | note                 |
| --- | ---------------- | ---------------- | --------------------------------- | -------------------------- | -------------------- |
| 1   | 1                | 3                | {"en": null, "vi": "thiết kế db"} | {"en": null, "vi": "code"} | "Thiếu mô tả đề tài" |

<h4>Bảng 5.1.4.d.3: Ví dụ về bảng tp_council</h4>

| id  | subject_department_id | reserveRoom | reserveDate | startTime | endTime |
| --- | --------------------- | ----------- | ----------- | --------- | ------- |
| 1   | 9                     | 404-H6      | null        | null      | null    |

| id  | role_id       | teacher_code          | note                                                 |
| --- | ------------- | --------------------- | ---------------------------------------------------- |
| 1   | [13,14,11,12] | [1113,null,1111,null] | "Thiếu ngày và thời gian, thiếu thành phần hội đồng" |

<h4>Bảng 5.1.4.d.4: Ví dụ về bảng tp_topic_assign</h4>

| id  | topic_id | semester | status_id | execute_student_code | council_id |
| --- | -------- | -------- | --------- | -------------------- | ---------- |
| 1   | 1        | 201      | 6         | [1713015, 1713016]   | null       |
| 2   | 1        | 202      | 8         | [1713015, 1713016]   | null       |
| 3   | 1        | 203      | 7         | [1713015]            | 1          |

| id  | guide_teacher_code | review_teacher_code | note                                                            |
| --- | ------------------ | ------------------- | --------------------------------------------------------------- |
| 1   | [0001]             | [0002]              | null                                                            |
| 2   | [0001]             | null                | "vì dịch covid nên nhóm sinh viên xin bảo lưu đề tài"           |
| 3   | [0001]             | [0002, 0003]        | "vì lý do cá nhân, sinh viên có mã số 1713016 rút khỏi đề tài." |

<div style="page-break-after: always;"></div>

### **5.1.5 Các bảng nhóm điểm (sc)**

<center>
  <img width="180" src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_5_achitechture_design/img/group-sc-criterion.png?raw=true">
</center>

<center>
  <img width="500" src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_5_achitechture_design/img/group-sc-template-score.png?raw=true">
  <p>Sơ đồ 5.1.5: ERD diagram của nhóm sc</p>
</center>

<div style="page-break-after: always;"></div>

#### 5.1.5.a Bảng sc_criterion

**Dữ liệu:** Thông tin tiêu chí

<h4>Bảng 5.1.5.a: Đặc tả chi tiết bảng sc_criterion</h4>

| Trường             | Kiểu dữ liệu  | Chứa null | Mặc định | Mô tả                                  |
| ------------------ | ------------- | --------- | -------- | -------------------------------------- |
| name               | json          | không     | không    | Tên tiêu chí                           |
| score_method_id    | bigint        | không     | không    | Phương thức chấm điểm                  |
| score_item_percent | array-integer | không     | không    | Phần trăm số điểm mỗi bậc của tiêu chí |
| description        | json          | có        | không    | Mô tả tiêu chí                         |

#### 5.1.5.b Bảng sc_criterion_template

**Dữ liệu:** Thông tin về mẫu tiêu chí

<h4>Bảng 5.1.5.b: Đặc tả chi tiết bảng sc_criterion_template</h4>

| Trường          | Kiểu dữ liệu  | Chứa null | Mặc định | Mô tả                        |
| --------------- | ------------- | --------- | -------- | ---------------------------- |
| name            | json          | không     | không    | Tên tiêu chí                 |
| criterion_id    | array-bigint  | không     | không    | Danh sách tiêu chí           |
| criterion_score | array-integer | không     | không    | Điểm tối đa cho mỗi tiêu chí |
| description     | json          | có        | không    | Mô tả về mẫu tiêu chí        |

#### 5.1.5.c Bảng sc_score

**Dữ liệu:** Thông tin về điểm số

<h4>Bảng 5.1.5.c: Đặc tả chi tiết bảng sc_score</h4>

| Trường                | Kiểu dữ liệu  | Chứa null | Mặc định | Mô tả                                                     |
| --------------------- | ------------- | --------- | -------- | --------------------------------------------------------- |
| topic_assign_id       | bigint        | không     | không    | Chấm điểm cho giai đoạn của đề tài                        |
| criterion_template_id | bigint        | không     | không    | Mẫu được dùng để chấm điểm                                |
| teacher_code          | string        | không     | không    | Mã giảng viên chấm điểm                                   |
| student_code          | string        | không     | không    | Mã sinh viên được chấm điểm                               |
| score                 | array-integer | có        | không    | Danh sách điểm tương ứng với danh sách tiêu chí trong mẫu |
| comment               | text          | có        | không    | Bình luận của giảng viên khi chấm điểm                    |

<div style="page-break-after: always;"></div>

#### 5.1.5.d Ví dụ về bảng sc_criterion, sc_criterion_template, sc_score

<p style='text-align: justify;'>
&emsp;
Một mẫu tiêu chí chấm điểm số 45 được dùng chấm đề cương và cả luận văn, 
gồm 2 tiêu chí là "Đạt 80% khối lượng công việc" và "Báo cáo chi tiết".
2 tiêu chí này được chấm theo phương thức ABC.
Tiêu chí đầu tiên có số điểm tối đa là 20 điểm, tiêu chí thứ hai tối đa 10 điểm.
Tiêu chí 1 thì A được toàn bộ số điểm, B được một nửa điểm và C được 30% điểm.
Tiêu chí 2 thì A được toàn bộ số điểm, B được 80% số điểm, C được 60% số điểm.
</br>

<h4>Bảng 5.1.5.d.1: Chuẩn bị bảng br_const_data</h4>

| id  | type            | value                                                  | no   |
| --- | --------------- | ------------------------------------------------------ | ---- |
| 1   | scoreMethodItem | {"en":"A","vi":"A"}                                    | 1    |
| 2   | scoreMethodItem | {"en":"C","vi":"C"}                                    | 3    |
| 3   | scoreMethodItem | {"en":"B","vi":"B"}                                    | 2    |
| 4   | scoreMethodName | {"en":null,"vi":"Phương thức chấm điểm ABC"}           | null |
| 5   | topicTemplate   | {"en":null,"vi":"Mẫu tiêu chí chấm đề cương hiện tại"} | null |
| 6   | thesisTemplate  | {"en":null,"vi":"Mẫu tiêu chí chấm luận văn hiện tại"} | null |

<h4>Bảng 5.1.5.d.2: Chuẩn bị bảng br_setting</h4>

| id  | name_id | ref_table             | ref_id  |
| --- | ------- | --------------------- | ------- |
| 21  | 4       | br_const_data         | [1,3,2] |
| 22  | 5       | sc_criterion_template | [41]    |
| 23  | 6       | sc_criterion_template | [41]    |

<h4>Bảng 5.1.5.d.3: Ví dụ về bảng sc_criterion</h4>

| id  | name                                             | score_method_id | score_item_percent | description                                                |
| --- | ------------------------------------------------ | --------------- | ------------------ | ---------------------------------------------------------- |
| 31  | {"en":null, "vi":"Đạt 80% khối lượng công việc"} | 21              | [100,50,30]        | {"en":null, "vi":"A: 100% điểm, B: 50% điểm, C: 30% điểm"} |
| 32  | {"en":null, "vi":"Báo cáo chi tiết"}             | 21              | [100,80,60]        | {"en":null, "vi":"A: 100% điểm, B: 80% điểm, C: 30% điểm"} |

<h4>Bảng 5.1.5.d.4: Ví dụ về bảng sc_criterion_template</h4>

| id  | name                          | criterion_id | criterion_score | description |
| --- | ----------------------------- | ------------ | --------------- | ----------- |
| 41  | {"en":null, "vi":"Mẫu số 45"} | [31,32]      | [20,10]         | null        |

<div style="page-break-after: always;"></div>

<p style='text-align: justify;'>
&emsp;
Sử dụng mẫu chấm điểm trong ví dụ trên.
</p>

<p style='text-align: justify;'>
&emsp;
Sinh viên có mã số 1713015 làm luận văn đề tài có id 123 ở học kỳ 201.
Sinh viên này được giảng viên hướng dẫn mã số 0001 cho điểm A và B, 
giảng viên phản biện mã số 0002 cho điểm B và C.
Một hội đồng gồm chủ tịch mã số 1111, thư ký mã số 1113.
Thư ký đã chấm điểm cho sinh viên lần lượt điểm C và A.
</p>

<h4>Bảng 5.1.5.d.5: Chuẩn bị bảng br_const_data</h4>

| id  | type        | value                              | no  |
| --- | ----------- | ---------------------------------- | --- |
| 7   | topicStatus | {"en":"Thesis","vi":"Luận văn"}    | 2   |
| 8   | councilRole | {"en":"Chairman", "vi":"Chủ tịch"} | 1   |
| 9   | councilRole | {"en":"Secretary", "vi":"Thư ký"}  | 2   |

<h4>Bảng 5.1.5.d.6: Chuẩn bị bảng tp_council</h4>

| id  | role_id | teacher_code |
| --- | ------- | ------------ |
| 51  | [8,9]   | [1111,1113]  |

<h4>Bảng 5.1.5.d.7: Chuẩn bị bảng tp_topic_assign</h4>

| id  | topic_id | semester | status_id | execute_student_code |
| --- | -------- | -------- | --------- | -------------------- |
| 61  | 123      | 201      | 7         | [1713015]            |

| id  | guide_teacher_code | review_teacher_code | council_id |
| --- | ------------------ | ------------------- | ---------- |
| 61  | [0001]             | [0002]              | 51         |

<h4>Bảng 5.1.5.d.8: Bảng tính toán điểm số</h4>

| Tiêu chí   | A              | B             | C            |
| ---------- | -------------- | ------------- | ------------ |
| Tiêu chí 1 | 20\*100/100=20 | 20\*50/100=10 | 20\*30/100=6 |
| Tiêu chí 2 | 10\*100/100=10 | 10\*80/100=8  | 10\*60/100=6 |

<h4>Bảng 5.1.5.d.9: Ví dụ về bảng sc_score</h4>

| id  | topic_assign_id | criterion_template_id | teacher_code | student_code | score  | comment |
| --- | --------------- | --------------------- | ------------ | ------------ | ------ | ------- |
| 71  | 61              | 41                    | 0001         | 1713015      | [20,8] | null    |
| 72  | 61              | 41                    | 0002         | 1713015      | [10,6] | null    |
| 73  | 61              | 41                    | 1111         | 1713015      | null   | null    |
| 74  | 61              | 41                    | 1113         | 1713015      | [6,10] | null    |

<div style="page-break-after: always;"></div>

## **5.2 Thiết kế API**

### **5.2.1 Các API cơ sở**

&emsp;Định nghĩa một số API cơ bản phục vụ thêm sửa xóa

&emsp;{x} = /api + [/const, /setting, /teacher, /student, /topic, /council, /topic/assign, /criterion, /criterion/template, /score]

&emsp;{entity} là table tương ứng {x}

<center><h4>Bảng 5.2.1: Các API cơ bản</h4></center>

| Mã API | Endpoint          | Phương thức | Tham số                                          | Kết quả                                                 |
| ------ | ----------------- | ----------- | ------------------------------------------------ | ------------------------------------------------------- |
| BA01   | {x}/              | GET         |                                                  | Các record được build                                   |
| BA02   | {x}/paging        | GET         | int:number, int:size, string: sort, bool:descend | Các record tại trang _number_, được sắp xếp theo _sort_ |
| BA03   | {x}/              | POST        | {entity}                                         | Tạo mới hoặc cập nhật dữ liệu                           |
| BA04   | {x}/all           | POST        | array-{entity}                                   | Tạo mới dữ liệu số lượng nhhieeuf                       |
| BA05   | {x}/example       | POST        | {entity}                                         | Dữ liệu khớp với _example_                              |
| BA06   | {x}/              | DELETE      |                                                  | Xóa tất cả dữ liệu trong bảng                           |
| BA07   | {x}/paging/search | POST        | SearchRequest{page, sort, filter}                | Các record được sort -> filter -> paging                |
| BA...  | {x}/...           | ...         | ...                                              | ...                                                     |

<div style="page-break-after: always;"></div>

### 5.2.2 Các API khác

&emsp;Các API phục vụ riêng một số nghiệp vụ nhất định

<center><h4>Bảng 5.2.2: Các API khác</h4></center>

| Mã API | Endpoint                     | Phương thức | Tham số                                                              | Kết quả                                                                       |
| ------ | ---------------------------- | ----------- | -------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| CO01   | /const/types                 | GET         |                                                                      | Thông tin các dữ liệu trong bảng br_const_data được group by type order by no |
| SE01   | /setting/template            | GET         | bool:thesis                                                          | Thông tin mẫu đánh giá đề cương hoặc luận văn hiện tại setting                |
| SE02   | /setting/template            | POST        | bool:thesis, {entity}                                                | Setting thông tin mẫu đánh giá dùng cho đề cương hoặc luận văn                |
| TC01   | /teacher/search              | GET         | string:value                                                         | Tìm kiếm giảng viên                                                           |
| SD02   | /student/search              | GET         | string:value                                                         | Tìm kiếm sinh viên                                                            |
| TP01   | /topic/assign/search/teacher | GET         | string:code, string:sort, bool:descend                               | Tìm kiếm các topic assign theo mã số giảng viên                               |
| TP02   | /topic/assign/search/topic   | GET         | string:topicName, string:sort, bool:descend                          | Tìm kiếm các topic assign theo tên đề tài                                     |
| RP01   | /report/topic                | GET         | localTime:startTime, localTime:endTime, bool:file, set:topicId       | Xuất báo cáo đề tài                                                           |
| RP01   | /report/topicAssign          | GET         | localTime:startTime, localTime:endTime, bool:file, set:topicAssignId | Xuất báo cáo phân công đề tài                                                 |
| RP01   | /report/council              | GET         | localTime:startTime, localTime:endTime, bool:file, set:councilId     | Xuất báo cáo hội đồng                                                         |
| RP01   | /report/score                | GET         | localTime:startTime, localTime:endTime, bool:file, set:scoreId       | Xuất báo cáo điểm                                                             |
| IP01   | /import/template             | GET         | string:type                                                          | Xuất mẫu file thêm dữ liệu                                                    |
| ...    | ...                          | ...         | ...                                                                  | ...                                                                           |

<div style="page-break-after: always;"></div>

## **5.3 Thiết kế luồng giao diện**

<center>
  <img width="570" src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_5_achitechture_design/img/ui-flow.png?raw=true">
  <p>Sơ đồ 5.3: UI flow chart</p>
</center>

<div style="page-break-after: always;"></div>

## **5.4 Thiết kế một số chức năng**

### **5.4.1 Chức năng xác thực người dùng**

<center>
  <img src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_5_achitechture_design/img/login.png?raw=true">
  <p>Sơ đồ 5.4.1: Login sequence diagram</p>
</center>

<div style="page-break-after: always;"></div>

### **5.4.2 Chức năng xác thực các yêu cầu từ người dùng**

<center>
  <img src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_5_achitechture_design/img/feature-request.png?raw=true">
  <p>Sơ đồ 5.4.2: Valid request sequence diagram</p>
</center>

<div style="page-break-after: always;"></div>

### **5.4.3 Chức năng thêm dữ liệu**

<center>
  <img height="930" src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_5_achitechture_design/img/feature-insert.png?raw=true">
  <p>Sơ đồ 5.4.3: Import data sequence diagram</p>
</center>

<div style="page-break-after: always;"></div>



