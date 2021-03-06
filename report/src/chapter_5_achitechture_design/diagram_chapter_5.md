# Group table diagram

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

# br group diagram

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

# ps group diagram

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

# tp group diagram

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

# sc group diagram

```mermaid
erDiagram
  br_setting {
    string name_id
    string refTable
    array-bigint ref_id
  }
  sc_criterion {
    json name
    bigint score_method_id
    array-integer score_item_percent
    json description
  }
  br_setting ||--|| sc_criterion : has_score_method
```

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
```

# UI flow diagram

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

# Login feature diagram

```mermaid
sequenceDiagram
  participant User
  participant Front_end
  participant Service
  participant Firebase

  User->>+Front_end: Request login
  Front_end-->>-User: Select email UI
  User->>+Front_end: Select email
  Front_end->>+Firebase: Email information
  Firebase-->>-Front_end: Token
  Front_end->>Front_end: Save token

  Front_end->>+Service: Token
  Service->>+Firebase: Token
  Firebase-->>-Service: User information
  Service->>Service: Check user information
  Service-->>-Front_end: Login information
  Front_end-->>-User: UI
```

# Feature request diagram

```mermaid
sequenceDiagram
  participant User
  participant Front_end
  participant Service
  participant Firebase

  User->>+Front_end: Request feature
  Front_end->>+Service: Token + FeatureRequest
  Service->>+Firebase: Token
  Firebase-->>-Service: User information
  Service->>Service: Check user information
  Service->>Service: Feature execute
  Service-->>-Front_end: FeatureData
  Front_end-->>-User: UI
```

# Feature insert data diagram

```mermaid
graph TD
  data[Dữ liệu] --> dataDiv
  dataDiv[Chia dữ liệu theo dòng] --> createThread
  createThread[Tạo nhiều luồng xử lí] --> map0
  map0[Chuyển dữ liệu thành Java-Objects] --> valid0
  valid0{Dữ liệu hợp lệ?} --> |Đúng| commit0
  valid0 --> |Sai| endSoon
  commit0[+1 cam kết] --> checkCommit0
  checkCommit0{Đếm cam kết} --> |Số cam kết bằng số Thread| insert0
  checkCommit0 --> |Số cam kết khác số Thread| checkCommit0
  insert0[Thêm dữ liệu vào database] --> join

  createThread --> map1
  map1[Chuyển dữ liệu thành Java-Objects] --> valid1
  valid1{Dữ liệu hợp lệ?} --> |Đúng| commit1
  valid1 --> |Sai| endSoon
  commit1[+1 cam kết] --> checkCommit1
  checkCommit1{Đếm cam kết} --> |Số cam kết bằng số Thread| insert1
  checkCommit1 --> |Số cam kết khác số Thread| checkCommit1
  insert1[Thêm dữ liệu vào database] --> join

  join[Hợp nhất thread] --> checkInsert
  checkInsert{Kiểm tra thread} --> |Các thread thêm thành công| true[Trả về success]
  checkInsert --> |Có thread thêm dữ liệu không thành công| rollback
  rollback[Rollback toàn bộ commit] --> fail[Quá trình thêm dữ liệu không thành công]

  endSoon[Kết thúc mọi thread] --> invalid[Dữ liệu không hợp lệ]
```
