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

Dự trữ

<div style="page-break-after: always;"></div>
