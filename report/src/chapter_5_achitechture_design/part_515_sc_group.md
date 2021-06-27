### **5.1.5 Các bảng nhóm điểm (sc)**

<center>
  <img width="200" src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_5_achitechture_design/img/group-sc-criterion.png?raw=true">
</center>

<center>
  <img width="530" src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_5_achitechture_design/img/group-sc-template-score.png?raw=true">
</center>

<div style="page-break-after: always;"></div>

#### 5.1.5.a Bảng sc_criterion

**Dữ liệu:** Thông tin tiêu chí

**Đặc tả chi tiết**

| Trường             | Kiểu dữ liệu  | Chứa null | Mặc định | Mô tả                                  |
| ------------------ | ------------- | --------- | -------- | -------------------------------------- |
| name               | json          | không     | không    | Tên tiêu chí                           |
| score_method_id    | bigint        | không     | không    | Phương thức chấm điểm                  |
| score_item_percent | array-integer | không     | không    | Phần trăm số điểm mỗi bậc của tiêu chí |
| description        | json          | có        | không    | Mô tả tiêu chí                         |

#### 5.1.5.b Bảng sc_criterion_template

**Dữ liệu:** Thông tin về mẫu tiêu chí

**Đặc tả chi tiết**

| Trường          | Kiểu dữ liệu  | Chứa null | Mặc định | Mô tả                        |
| --------------- | ------------- | --------- | -------- | ---------------------------- |
| name            | json          | không     | không    | Tên tiêu chí                 |
| criterion_id    | array-bigint  | không     | không    | Danh sách tiêu chí           |
| criterion_score | array-integer | không     | không    | Điểm tối đa cho mỗi tiêu chí |
| description     | json          | có        | không    | Mô tả về mẫu tiêu chí        |

#### 5.1.5.c Bảng sc_score

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

| id  | topic_id | semester | status_id | execute_student_code |
| --- | -------- | -------- | --------- | -------------------- |
| 61  | 123      | 201      | 7         | [1713015]            |

| id  | guide_teacher_code | review_teacher_code | council_id |
| --- | ------------------ | ------------------- | ---------- |
| 61  | [0001]             | [0002]              | 51         |

> Chúng ta có A được toàn bộ số điểm, B được một nửa điểm và C được 30% điểm.
> Tiêu chí đầu tiên có số điểm tối đa là 20 điểm, tiêu chí thứ hai tối đa 10 điểm.

Với mô tả ví dụ trên, số điểm sẽ được theo bảng sau

| Tiêu chí   | A              | B             | C            |
| ---------- | -------------- | ------------- | ------------ |
| Tiêu chí 1 | 20\*100/100=20 | 20\*50/100=10 | 20\*30/100=6 |
| Tiêu chí 2 | 10\*100/100=10 | 10\*80/100=8  | 10\*60/100=6 |

Bảng sc_score

| id  | topic_assign_id | criterion_template_id | teacher_code | student_code | score  | comment |
| --- | --------------- | --------------------- | ------------ | ------------ | ------ | ------- |
| 71  | 61              | 41                    | 0001         | 1713015      | [20,8] | null    |
| 72  | 61              | 41                    | 0002         | 1713015      | [10,6] | null    |
| 73  | 61              | 41                    | 1111         | 1713015      | [6,10] | null    |
| 74  | 61              | 41                    | 1113         | 1713015      | [20,6] | null    |

<div style="page-break-after: always;"></div>
