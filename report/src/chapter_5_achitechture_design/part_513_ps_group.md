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
