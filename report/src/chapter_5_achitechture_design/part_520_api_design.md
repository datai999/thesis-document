### **5.2 Thiết kế API**

#### 5.2.1 Các API cơ sở

&emsp;{x} = /api + [/const, /setting, /teacher, /student, /topic, /council, /topic/assign, /criterion, /criterion/template, /score]

&emsp;{entity} là table tương ứng {x}

| STT | Endpoint    | Phương thức | Tham số                                          | Kết quả                                                 |
| --- | ----------- | ----------- | ------------------------------------------------ | ------------------------------------------------------- |
| 1   | {x}/        | GET         |                                                  | Các record được build                                   |
| 2   | {x}/paging  | GET         | int:number, int:size, string: sort, bool:descend | Các record tại trang _number_, được sắp xếp theo _sort_ |
| 3   | {x}/        | POST        | {entity}                                         | Tạo mới hoặc cập nhật dữ liệu                           |
| 4   | {x}/all     | POST        | array-{entity}                                   | Tạo mới dữ liệu số lượng nhhieeuf                       |
| 5   | {x}/example | POST        | {entity}                                         | Dữ liệu khớp với _example_                              |
| 6   | {x}/        | DELETE      |                                                  | Xóa tất cả dữ liệu trong bảng                           |
