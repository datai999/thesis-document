### **5.1.2 Các bảng nhóm khác (br)**

<center>
  <img src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_5_achitechture_design/img/group-br.png?raw=true">
</center>

#### 5.1.2.a Bảng br_const_data

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

#### 5.1.2.b Bảng br_setting

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
