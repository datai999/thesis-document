## **5.2 Thiết kế API**

### **5.2.1 Các API cơ sở**

&emsp;Định nghĩa một số API cơ bản phục vụ thêm sửa xóa

&emsp;{x} = /api + [/const, /setting, /teacher, /student, /topic, /council, /topic/assign, /criterion, /criterion/template, /score]

&emsp;{entity} là table tương ứng {x}

<center><h4>Bảng 5.2.1: Các API cơ bản</h4></center>

| Mã API | Endpoint    | Phương thức | Tham số                                          | Kết quả                                                 |
| ------ | ----------- | ----------- | ------------------------------------------------ | ------------------------------------------------------- |
| BA01   | {x}/        | GET         |                                                  | Các record được build                                   |
| BA02   | {x}/paging  | GET         | int:number, int:size, string: sort, bool:descend | Các record tại trang _number_, được sắp xếp theo _sort_ |
| BA03   | {x}/        | POST        | {entity}                                         | Tạo mới hoặc cập nhật dữ liệu                           |
| BA04   | {x}/all     | POST        | array-{entity}                                   | Tạo mới dữ liệu số lượng nhhieeuf                       |
| BA05   | {x}/example | POST        | {entity}                                         | Dữ liệu khớp với _example_                              |
| BA06   | {x}/        | DELETE      |                                                  | Xóa tất cả dữ liệu trong bảng                           |
| BA...  | {x}/...     | ...         | ...                                              | ...                                                     |

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
