## **5 Thiết kế kiến trúc ứng dụng**

<div style="page-break-after: always;"></div>

### **5.1 Thiết cơ sở dữ liệu**

#### 5.1.1 Nền tảng thiết kết cơ sở dữ liệu

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
#### 5.1.2 Các bảng nhóm br

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
#### 5.1.3 Các bảng nhóm ps

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

#### 5.1.4 Các bảng nhóm tp

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
    }
    tp_council {
      bigint subject_department_id
      string reserve_room
      local-date reserve_date
      local-time start_time
      local-time end_time
      array-bigint role_id
      array-string teacher_code
    }
    tp_topic_assign {
      bigint topic_id
      boolean thesis_flag
      array-string execute_student_code
      array-string guide_teacher_code
      array-string review_teacher_code
      bigint council_id
    }
    br_const_data ||--o{ tp_topic : has_edu_method
    br_const_data ||--o{ tp_council : has_subject_department
    tp_topic ||--|| tp_topic_assign : has_topic
    tp_council ||--o{ tp_topic_assign : has_council
```

<div style="page-break-after: always;"></div>
#### 5.1.5 Các bảng nhóm sc

```mermaid
erDiagram
    br_const_data {
        string type
        json value
        integer no
    }
    tp_topic_assign {
      bigint topic_id
      boolean thesis_flag
      array-string execute_student_code
      array-string guide_teacher_code
      array-string review_teacher_code
      bigint council_id
    }
    sc_criterion {
        json name
        json description
    }
    sc_criterion_template {
      json name
      json description
      bigint score_method_id
      array-bigint criterion_id
    }
    sc_score {
      bigint topic_assign_id
      bigint criterion_template_id
      bigint teacher_code
      bigint student_code
      array-bigint criterion_id
      array-int score
      text comment
    }

    br_const_data ||--o{ sc_criterion_template : has_score_method
    tp_topic_assign ||--o{ sc_score : has_topic_assign
    sc_criterion_template ||--o{ sc_score : has_template
    ps_teacher ||--o{ sc_score : has_teacher
    ps_student ||--o{ sc_score : has_student
```


