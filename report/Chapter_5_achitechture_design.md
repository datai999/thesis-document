## **5 Thiết kế kiến trúc ứng dụng**

<div style="page-break-after: always;"></div>

### **5.1 Thiết kế cơ sở dữ liệu**

#### 5.1.1 Nền tảng thiết kế cơ sở dữ liệu

##### 5.1.1.a Chia nhóm các bảng

&emsp;Dựa vào yêu cầu của đề tài thì nhóm sẽ phân loại các table của database ra làm 4 nhóm

- Nhóm các table liên quan đến nhân sự (person), kí hiệu là **ps**
- Nhóm các table liên quan đến chủ đề (topic), kí hiệu là **tp**
- Nhóm các table liên quan đến điểm (score), kí hiệu là **sr**
- Nhóm các table còn lại (break), kí hiệu là **br**

&emsp;Tên các table sẽ được bắt đầu bằng kí hiệu thể hiện cho nhóm của mình.

Ví dụ: Table ps_teacher thuộc nhóm liên quan đến nhân sự và chứa dữ liệu của giảng viên.

##### 5.1.1.b Mối quan hệ giữa các nhóm bảng

&emsp;Mối quan hệ giữa các khóa ngoại (Foreign key) của các table trong nhóm được thể hiện bằng lược đồ sau.

```mermaid
graph LR
    br((Nhóm br))
    ps((Nhóm ps))
    tp((Nhóm tp))
    sc((Nhóm sc))

    ps-->br
    tp-->br
    sc-->br

    tp-->ps
    sc-->tp
    sc-->ps
```

<center>Lược đồ 5.1.1 Mối quan hệ Foreign key giữa các nhóm table</center>

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

##### 5.1.1.c Bảng cơ sở

Mọi table đều extends **BaseTable** chứa các thông tin sau

**Dữ liệu:** Các dữ liệu cơ bản mọi record đều có

**Đặc tả chi tiết**

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

##### 5.1.1.d Giảm dư thừa dữ liệu bằng array

<p style='text-align: justify;'>
&emsp;Các thiết kế từng bảng sẽ tuân thủ thêm nguyên tắc giảm số dòng (record)
khi có thể bằng các tận dụng array của PosgreSQL
</p>

Ví dụ một bảng sau

| id  | Loại sản phẩm | Tên sản phẩm |
| --- | ------------- | ------------ |
| 1   | A             | Sting        |
| 2   | A             | Pepsi        |
| 3   | A             | Coca         |

Sẽ được chuyển thành

| id  | Loại sản phẩm | Tên sản phẩm          |
| --- | ------------- | --------------------- |
| 1   | A             | [String, Pepsi, Coca] |

<p style='text-align: justify;'>
&emsp;Cách thiết kế này giúp giảm số lượng dữ liệu dư thừa, trách group by trong câu query.
</p>

##### 5.1.1.e Đa ngôn ngữ bằng json

<p style='text-align: justify;'>
&emsp;PostgreSQL có hỗ trợ kiểu dữ liệu JSON, nhóm sẽ tận dùng để lưu trữ đa ngôn ngữ.
</p>

Ví dụ

| id  | multi_lang_field                                   |
| --- | -------------------------------------------------- |
| 1   | {"en":"Computer Science","vi":"Khoa học máy tính"} |

<div style="page-break-after: always;"></div>

#### 5.1.2 Các bảng nhóm khác (br)

```mermaid
erDiagram
    br_const_data {
        string type
        json value
        integer no
    }
    br_setting {
        string name_id
        string refTable
        array-bigint ref_id
    }
    br_const_data ||-- o{ br_setting : name
```

##### 5.1.2.a Bảng br_const_data

**Dữ liệu:** Các dữ liệu ít hoặc gần như không thay đổi

**Ràng buộc:** type & value là unit

**Đặc tả chi tiết**

| Trường | Kiểu dữ liệu | Chứa null | Mặc định | Mô tả                                       |
| ------ | ------------ | --------- | -------- | ------------------------------------------- |
| type   | string       | không     | không    | Tên của loại dữ liệu ít thay đổi            |
| value  | json         | không     | không    | Giá trị đa ngôn ngữ của dữ liệu ít thay đổi |
| no     | integer      | có        | không    | Thứ tự hiển thị trên UI                     |

**Ví dụ:**

| id  | type   | value                                | no  |
| --- | ------ | ------------------------------------ | --- |
| 1   | degree | {"en": "Bachelor", "vi": "Cử nhân"}  | 1   |
| 2   | degree | {"en": "Master", "vi": "Thạc sĩ"}    | 2   |
| 3   | degree | {"en": "Doctor", "vi": "Tiến sĩ"}    | 3   |
| 4   | degree | {"en": "Professor", "vi": "Giáo sư"} | 4   |

<div style="page-break-after: always;"></div>

##### 5.1.2.b Bảng br_setting

**Dữ liệu:** Các dữ liệu cài đặt chung của hệ thống

**Ràng buộc:** name_id là unit

**Đặc tả chi tiết**

| Trường    | Kiểu dữ liệu | Chứa null | Mặc định | Mô tả                      |
| --------- | ------------ | --------- | -------- | -------------------------- |
| name_id   | string       | không     | không    | Tên của setting            |
| ref_table | string       | không     | không    | Table chứa giá trị setting |
| ref_id    | array-bigint | không     | không    | Các record được setting    |

**Ví dụ:** Chỉ một số cấp bậc học vấn được hiển thị trên màn hình

Bảng br_const_data

| id  | type    | value                                                       | no   |
| --- | ------- | ----------------------------------------------------------- | ---- |
| 1   | degree  | {"en": "Bachelor", "vi": "Cử nhân"}                         | 1    |
| 2   | degree  | {"en": "Master", "vi": "Thạc sĩ"}                           | 2    |
| 3   | degree  | {"en": "Doctor", "vi": "Tiến sĩ"}                           | 3    |
| 4   | degree  | {"en": "Professor", "vi": "Giáo sư"}                        | 4    |
| 5   | setting | {"en": "Degree visible", "vi": "Trình độ học vấn hiển thị"} | null |

Bảng br_setting

| id  | name_id | ref_table     | ref_id |
| --- | ------- | ------------- | ------ |
| 1   | 5       | br_const_data | [2,3]  |

<div style="page-break-after: always;"></div>

#### 5.1.3 Các bảng nhóm nhân sự (ps)

Mọi table thuộc nhóm **ps** đều extends **PersonBaseTable**, **PersonBaseTable** extend **BaseTable**

```mermaid
erDiagram
    br_const_data {
        string type
        json value
        integer no
    }
    PersonBaseTable {
        string code
        string name
        bigint gender_id
        string email
        string phone
    }
    ps_academy_staff {
    }
    ps_teacher {
      bigint subject_department_id
      bigint degree_id
    }
    ps_student {
      bigint education_method_id
      bigint major_id
    }
    br_const_data ||--o{ PersonBaseTable : has_gender_type
    br_const_data ||--o{ ps_teacher : has_subject_department
    br_const_data ||--o{ ps_teacher : has_degree
    br_const_data ||--o{ ps_student : has_edu_method
    br_const_data ||--o{ ps_student : has_major
```

##### 5.1.3.a Bảng PersonBaseTable

Là bảng cơ sở của nhóm **ps**. Nó là bảng ảo không có thực trong database. Các bảng thuộc nhóm **ps** đều có tất cả các field thuộc bảng này.

**Dữ liệu:** Thông tin cơ bản của nhân sự

**Ràng buộc:** code là unit

**Đặc tả chi tiết**

| Trường    | Kiểu dữ liệu | Chứa null | Mặc định | Mô tả                            |
| --------- | ------------ | --------- | -------- | -------------------------------- |
| code      | string       | không     | không    | Mã số nhân viên, mã số sinh viên |
| name      | string       | có        | không    | Tên đầy đủ                       |
| gender_id | bigint       | có        | không    | Giới tính                        |
| email     | string       | không     | không    | HCMUT mail                       |
| phone     | string       | có        | không    | Số điện thoại                    |

**Ví dụ:**

Bảng br_const_data

| id  | type   | value                        | no   |
| --- | ------ | ---------------------------- | ---- |
| 1   | gender | {"en": "Male", "vi": "Name"} | null |
| 2   | gender | {"en": "Female", "vi": "Nữ"} | null |

Bảng PersonBaseTable

| id  | code    | name               | gender_id | email                             | phone      |
| --- | ------- | ------------------ | --------- | --------------------------------- | ---------- |
| 1   | 1713015 | Nguyễn Đức Anh Tài | 1         | tai.nguyen.cse.datai@hcmut.edu.vn | 0905345670 |

<div style="page-break-after: always;"></div>

##### 5.1.3.b Bảng ps_academy_staff

**Dữ liệu:** Thông tin giáo vụ

Các field của bảng này bằng các field thuộc bảng BaseTable + field thuộc bảng PersonBaseTable

##### 5.1.3.c Bảng ps_teacher

**Dữ liệu:** Thông tin giảng viên

**Đặc tả chi tiết**

| Trường                | Kiểu dữ liệu | Chứa null | Mặc định | Mô tả                         |
| --------------------- | ------------ | --------- | -------- | ----------------------------- |
| subject_department_id | bigint       | có        | không    | Phòng ban giảng viên làm việc |
| degree_id             | bigint       | có        | không    | Học vị của giảng viên         |

**Ví dụ:**

Bảng br_const_data

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

Bảng ps_teacher

| id  | code    | name               | gender_id | email                             | phone      | subject_department_id | degree_id |
| --- | ------- | ------------------ | --------- | --------------------------------- | ---------- | --------------------- | --------- |
| 1   | 1713015 | Nguyễn Đức Anh Tài | 1         | tai.nguyen.cse.datai@hcmut.edu.vn | 0905345670 | 7                     | 4         |

##### 5.1.3.c Bảng ps_student

**Dữ liệu:** Thông tin sinh viên

**Đặc tả chi tiết**

| Trường              | Kiểu dữ liệu | Chứa null | Mặc định | Mô tả                         |
| ------------------- | ------------ | --------- | -------- | ----------------------------- |
| education_method_id | bigint       | có        | không    | Phương thức đào tạo sinh viên |
| major               | bigint       | có        | không    | Chuyên ngành của sinh viên    |

**Ví dụ:** Tương đồng ví dụ bảng ps_teacher

<div style="page-break-after: always;"></div>

#### 5.1.4 Các bảng nhóm đề tài (tp)

```mermaid
erDiagram
    br_const_data {
        string type
        json value
        integer no
    }
    tp_topic {
        string code
        json name
        integer semester
        array-bigint major_id
        bigint education_method_id
        integer min_student_take
        integer max_student_take
        json description
        json topic_task
        json thesis_task
        text note
    }
    tp_council {
      bigint subject_department_id
      string reserve_room
      local-date reserve_date
      local-time start_time
      local-time end_time
      array-bigint role_id
      array-string teacher_code
      text note
    }
    tp_topic_assign {
      bigint topic_id
      integer semester
      bigint status_id
      array-string execute_student_code
      array-string guide_teacher_code
      array-string review_teacher_code
      bigint council_id
      text note
    }
    br_const_data ||--o{ tp_topic : has_edu_method
    br_const_data ||--o{ tp_council : has_subject_department
    tp_topic ||--|| tp_topic_assign : has_topic
    br_const_data ||--|| tp_topic_assign : has_status
    tp_council ||--o{ tp_topic_assign : has_council
```

<div style="page-break-after: always;"></div>

##### 5.1.4.a Bảng tp_topic

**Dữ liệu:** Thông tin về đề tài

**Ràng buộc:** min_student_take, max_student_take >= 1

**Đặc tả chi tiết**

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

##### 5.1.4.b Bảng tp_council

**Dữ liệu:** Thông tin về hội đồng

**Đặc tả chi tiết**

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

##### 5.1.4.c Bảng tp_topic_assign

**Dữ liệu:** Thông tin về việc gán các nghiệp vụ cho đề tài

**Đặc tả chi tiết**

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

##### 5.1.4.d Ví dụ về bảng tp_topic, tp_council, tp_topic_assign

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

Bảng br_const_data

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

Bảng tp_topic

| id  | code | name                    | semester | major_id | education_method_id | min_student_take | max_student_take | description | topic_task                        | thesis_task                | note                 |
| --- | ---- | ----------------------- | -------- | -------- | ------------------- | ---------------- | ---------------- | ----------- | --------------------------------- | -------------------------- | -------------------- |
| 1   | 123  | {"en": "A", "vi": "ABC" | 201      | 1        | 4                   | 1                | 3                | null        | {"en": null, "vi": "thiết kế db"} | {"en": null, "vi": "code"} | "Thiếu mô tả đề tài" |

Bảng tp_council

| id  | subject_department_id | reserveRoom | reserveDate | startTime | endTime | role_id       | teacher_code          | note                                                 |
| --- | --------------------- | ----------- | ----------- | --------- | ------- | ------------- | --------------------- | ---------------------------------------------------- |
| 1   | 9                     | 404-H6      | null        | null      | null    | [13,14,11,12] | [1113,null,1111,null] | "Thiếu ngày và thời gian, thiếu thành phần hội đồng" |

Bảng tp_topic_assign

| id  | topic_id | semester | status_id | execute_student_code | guide_teacher_code | review_teacher_code | council_id | note                                                            |
| --- | -------- | -------- | --------- | -------------------- | ------------------ | ------------------- | ---------- | --------------------------------------------------------------- |
| 1   | 1        | 201      | 6         | [1713015, 1713016]   | [0001]             | [0002]              | null       | null                                                            |
| 2   | 1        | 202      | 8         | [1713015, 1713016]   | [0001]             | null                | null       | "vì dịch covid nên nhóm sinh viên xin bảo lưu đề tài"           |
| 3   | 1        | 203      | 7         | [1713015]            | [0001]             | [0002, 0003]        | 1          | "vì lý do cá nhân, sinh viên có mã số 1713016 rút khỏi đề tài." |

<div style="page-break-after: always;"></div>

#### 5.1.5 Các bảng nhóm điểm (sc)

```mermaid
erDiagram
    tp_council {
      array-bigint role_id
      array-string teacher_code
    }
    br_const_data {
        string type
        json value
        integer no
    }
    br_setting {
        string name_id
        string refTable
        array-bigint ref_id
    }
    tp_topic_assign {
      bigint topic_id
      integer semester
      bigint status_id
      array-string execute_student_code
      array-string guide_teacher_code
      array-string review_teacher_code
      bigint council_id
    }
    sc_criterion_template {
      json name
      array-bigint criterion_id
      array-integer criterion_score
      json description
    }
    sc_criterion {
        json name
        bigint score_method_id
        array-integer score_item_percent
        json description
    }
    sc_score {
      bigint topic_assign_id
      bigint criterion_template_id
      bigint teacher_code
      bigint student_code
      array-int score
      text comment
    }
    tp_council ||--o{ tp_topic_assign : has_council
    br_const_data ||--|| tp_topic_assign : has_status

    tp_topic_assign ||--|| sc_score : for_topic_assign
    sc_criterion_template ||--|| sc_score : has_template

    br_setting ||--|| sc_criterion : has_score_method
```

<div style="page-break-after: always;"></div>

##### 5.1.5.a Bảng sc_criterion

**Dữ liệu:** Thông tin tiêu chí

**Đặc tả chi tiết**

| Trường             | Kiểu dữ liệu  | Chứa null | Mặc định | Mô tả                                  |
| ------------------ | ------------- | --------- | -------- | -------------------------------------- |
| name               | json          | không     | không    | Tên tiêu chí                           |
| score_method_id    | bigint        | không     | không    | Phương thức chấm điểm                  |
| score_item_percent | array-integer | không     | không    | Phần trăm số điểm mỗi bậc của tiêu chí |
| description        | json          | có        | không    | Mô tả tiêu chí                         |

##### 5.1.5.b Bảng sc_criterion_template

**Dữ liệu:** Thông tin về mẫu tiêu chí

**Đặc tả chi tiết**

| Trường          | Kiểu dữ liệu  | Chứa null | Mặc định | Mô tả                        |
| --------------- | ------------- | --------- | -------- | ---------------------------- |
| name            | json          | không     | không    | Tên tiêu chí                 |
| criterion_id    | array-bigint  | không     | không    | Danh sách tiêu chí           |
| criterion_score | array-integer | không     | không    | Điểm tối đa cho mỗi tiêu chí |
| description     | json          | có        | không    | Mô tả về mẫu tiêu chí        |

##### 5.1.5.c Bảng sc_score

**Dữ liệu:** Thông tin về điểm số

**Đặc tả chi tiết**

| Trường                | Kiểu dữ liệu  | Chứa null | Mặc định | Mô tả                                                     |
| --------------------- | ------------- | --------- | -------- | --------------------------------------------------------- |
| topic_assign_id       | bigint        | không     | không    | Chấm điểm cho giai đoạn của đề tài                        |
| criterion_template_id | bigint        | không     | không    | Mẫu được dùng để chấm điểm                                |
| teacher_code          | string        | không     | không    | Mã giảng viên chấm điểm                                   |
| student_code          | string        | không     | không    | Mã sinh viên được chấm điểm                               |
| score                 | array-integer | có        | không    | Danh sách điểm tương ứng với danh sách tiêu chí trong mẫu |
| comment               | text          | có        | không    | Bình luận của giảng viên khi chấm điểm                    |

<div style="page-break-after: always;"></div>

##### 5.1.5.d Ví dụ về bảng sc_criterion, sc_criterion_template, sc_score

<p style='text-align: justify;'>
&emsp;
Một mẫu tiêu chí chấm điểm số 45 được dùng chấm đề cương và cả luận văn, 
gồm 2 tiêu chí là "Đạt 80% khối lượng công việc" và "Báo cáo chi tiết".
2 tiêu chí này được chấm theo phương thức ABC.
Tiêu chí đầu tiên có số điểm tối đa là 20 điểm, tiêu chí thứ hai tối đa 10 điểm.
Tiêu chí 1 thì A được toàn bộ số điểm, B được một nửa điểm và C được 30% điểm.
Tiêu chí 2 thì A được toàn bộ số điểm, B được 80% số điểm, C được 60% số điểm.
</br>

Bảng br_const_data

| id  | type            | value                                                  | no   |
| --- | --------------- | ------------------------------------------------------ | ---- |
| 1   | scoreMethodItem | {"en":"A","vi":"A"}                                    | 1    |
| 2   | scoreMethodItem | {"en":"C","vi":"C"}                                    | 3    |
| 3   | scoreMethodItem | {"en":"B","vi":"B"}                                    | 2    |
| 4   | scoreMethodName | {"en":null,"vi":"Phương thức chấm điểm ABC"}           | null |
| 5   | topicTemplate   | {"en":null,"vi":"Mẫu tiêu chí chấm đề cương hiện tại"} | null |
| 6   | thesisTemplate  | {"en":null,"vi":"Mẫu tiêu chí chấm luận văn hiện tại"} | null |

Bảng br_setting

| id  | name_id | ref_table             | ref_id  |
| --- | ------- | --------------------- | ------- |
| 21  | 4       | br_const_data         | [1,3,2] |
| 22  | 5       | sc_criterion_template | [41]    |
| 23  | 6       | sc_criterion_template | [41]    |

Bảng sc_criterion

| id  | name                                             | score_method_id | score_item_percent | description                                                                        |
| --- | ------------------------------------------------ | --------------- | ------------------ | ---------------------------------------------------------------------------------- |
| 31  | {"en":null, "vi":"Đạt 80% khối lượng công việc"} | 21              | [100,50,30]        | {"en":null, "vi":"A được toàn bộ số điểm, B được một nửa điểm và C được 30% điểm"} |
| 32  | {"en":null, "vi":"Báo cáo chi tiết"}             | 21              | [100,80,60]        | {"en":null, "vi":"A được toàn bộ số điểm, B được một nửa điểm và C được 30% điểm"} |

Bảng sc_criterion_template

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
Một hội đồng gồm chủ tịch mã số 1111, thư ký mã số 1113 đã chấm điểm cho sinh viên lần lượt điểm C và A, A và C.
</p>

Bảng br_const_data

| id  | type        | value                              | no  |
| --- | ----------- | ---------------------------------- | --- |
| 7   | topicStatus | {"en":"Thesis","vi":"Luận văn"}    | 2   |
| 8   | councilRole | {"en":"Chairman", "vi":"Chủ tịch"} | 1   |
| 9   | councilRole | {"en":"Secretary", "vi":"Thư ký"}  | 2   |

Bảng tp_council

| id  | role_id | teacher_code |
| --- | ------- | ------------ |
| 51  | [8,9]   | [1111,1113]  |

Bảng tp_topic_assign

| id  | topic_id | semester | status_id | execute_student_code | guide_teacher_code | review_teacher_code | council_id |
| --- | -------- | -------- | --------- | -------------------- | ------------------ | ------------------- | ---------- |
| 61  | 123      | 201      | 7         | [1713015]            | [0001]             | [0002]              | 51         |

Bảng sc_score

| id  | topic_assign_id | criterion_template_id | teacher_code | student_code | score  | comment |
| --- | --------------- | --------------------- | ------------ | ------------ | ------ | ------- |
| 71  | 61              | 41                    | 0001         | 1713015      | [20,8] | null    |
| 72  | 61              | 41                    | 0002         | 1713015      | [10,6] | null    |
| 73  | 61              | 41                    | 1111         | 1713015      | [6,10] | null    |
| 74  | 61              | 41                    | 1113         | 1713015      | [20,6] | null    |

Công thức tính điểm tại tiêu chí i và lựa chọn j: criterion_score[i] \* sc_criterion[j] /100

Ở mô tả ví dụ trên chúng ta có:

> Chúng ta có A được toàn bộ số điểm, B được một nửa điểm và C được 30% điểm.
> Tiêu chí đầu tiên có số điểm tối đa là 20 điểm, tiêu chí thứ hai tối đa 10 điểm.

Vậy số điểm được tính sẽ theo bảng sau

| Tiêu chí   | A              | B             | C            |
| ---------- | -------------- | ------------- | ------------ |
| Tiêu chí 1 | 20\*100/100=20 | 20\*50/100=10 | 20\*30/100=6 |
| Tiêu chí 2 | 10\*100/100=10 | 10\*80/100=8  | 10\*60/100=6 |

<div style="page-break-after: always;"></div>



### **5.2 Thiết kế API**

#### 5.2.1 Các API cơ sở

&emsp;Định nghĩa một số API cơ bản phục vụ thêm sửa xóa

&emsp;{x} = /api + [/const, /setting, /teacher, /student, /topic, /council, /topic/assign, /criterion, /criterion/template, /score]

&emsp;{entity} là table tương ứng {x}

| Mã API | Endpoint    | Phương thức | Tham số                                          | Kết quả                                                 |
| ------ | ----------- | ----------- | ------------------------------------------------ | ------------------------------------------------------- |
| 0001   | {x}/        | GET         |                                                  | Các record được build                                   |
| 0002   | {x}/paging  | GET         | int:number, int:size, string: sort, bool:descend | Các record tại trang _number_, được sắp xếp theo _sort_ |
| 0003   | {x}/        | POST        | {entity}                                         | Tạo mới hoặc cập nhật dữ liệu                           |
| 0004   | {x}/all     | POST        | array-{entity}                                   | Tạo mới dữ liệu số lượng nhhieeuf                       |
| 0005   | {x}/example | POST        | {entity}                                         | Dữ liệu khớp với _example_                              |
| 0006   | {x}/        | DELETE      |                                                  | Xóa tất cả dữ liệu trong bảng                           |

#### 5.2.2 Các API khác

&emsp;Các API phục vụ riêng một số nghiệp vụ nhất định

| Mã API | Endpoint                     | Phương thức | Tham số                                     | Kết quả                                                                       |
| ------ | ---------------------------- | ----------- | ------------------------------------------- | ----------------------------------------------------------------------------- |
| 0101   | /const/types                 | GET         |                                             | Thông tin các dữ liệu trong bảng br_const_data được group by type order by no |
| 0201   | /setting/template            | GET         | bool:thesis                                 | Thông tin mẫu đánh giá đề cương hoặc luận văn hiện tại setting                |
| 0202   | /setting/template            | POST        | bool:thesis, {entity}                       | Setting thông tin mẫu đánh giá dùng cho đề cương hoặc luận văn                |
| 0301   | /teacher/search              | GET         | string:value                                | Tìm kiếm giảng viên                                                           |
| 0302   | /student/search              | GET         | string:value                                | Tìm kiếm sinh viên                                                            |
| 0401   | /topic/assign/search/teacher | GET         | string:code, string:sort, bool:descend      | Tìm kiếm các topic assign theo mã số giảng viên                               |
| 0402   | /topic/assign/search/topic   | GET         | string:topicName, string:sort, bool:descend | Tìm kiếm các topic assign theo tên đề tài                                     |
| 0501   | /report                      |
| 0601   | /import                      |

<div style="page-break-after: always;"></div>

<div style="page-break-after: always;"></div>



### **5.3 Thiết kế luồng giao diện**

```mermaid
graph LR
  LoginScreen[Màn hình đăng nhập] --> HomeScreen[Màn hình chính]

  subgraph LoginSuccess[Các giao diện trong hệ thống]
    direction LR

    subgraph TopNav[Menu điều hướng]
      direction TB
      Nav
      Avatar
    end

    subgraph Body[Phần thao tác chính]
      direction LR

      Nav[Điều hướng] --> HomeScreen
      Nav --> TopicScreen
      TopicScreen[Màn hình đề tài] --> TopicPopup
      TopicPopup[Form đề tài] --> CouncilPopup[Form hội đồng]

      Nav --> EvaluateScreen
      EvaluateScreen[Màn hình đánh giá] --> TopicPopup
      EvaluateScreen --> EvaluatePopup
      EvaluatePopup[Form đánh giá] --> CriterionTemplatePopup[Form mẫu đánh giá]
      EvaluateScreen --> ScorePopup[Form chấm điểm]

      Nav-->CouncilScreen
      CouncilScreen[Màn hình hội đồng] --> CouncilPopup

      subgraph PersonScreen[Màn hình nhân sự]
        direction TB
        Nav --> TeacherScreen
        Nav --> StudentScreen
      end
      TeacherScreen[Màn hình giảng viên]-->TeacherPopup[Form thông tin giảng viên]
      StudentScreen[Màn hình sinh viên]-->StudentPopup[Form thông tin sinh viên]

      Nav --> CriterionScreen
      CriterionScreen[Màn hình mẫu đánh giá]-->CriterionTemplatePopup

      Nav --> ReportScreen
      ReportScreen[Màn hình báo cáo] --> TopicReport[Báo cáo đề tài]
      ReportScreen --> TopicAssignReport[Báo cáo phân công đề tài]
      ReportScreen --> CouncilReport[Báo cáo hội đồng]
      ReportScreen --> ScoreReport[Báo cáo điểm số]

      Nav --> SettingScreen
      SettingScreen[Màn hình cài đặt] --> SettingTemplatePopup
      SettingTemplatePopup[Cài đặt mẫu đánh giá] --> CriterionTemplatePopup
      SettingScreen --> ImportDataScreen[Màn hình thêm dữ liệu]
      SettingScreen --> SettingScoreMethod[Cài đặt phương thức chấm điểm]
    end

    Avatar --> TeacherPopup
    Avatar --> StudentPopup
    Avatar --> SettingScreen
  end

  Avatar --> LogoutScreen[Màn hình đăng nhập]
```

<div style="page-break-after: always;"></div>



