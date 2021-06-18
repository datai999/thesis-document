DROP SCHEMA IF EXISTS public CASCADE;
CREATE SCHEMA public;
DROP SCHEMA IF EXISTS public;
CREATE SCHEMA public;

-------------------------------------------------------------------------------------
-- create table

-- br is break
-- tables about irregular tables 

CREATE TABLE br_base_table(
	del_flag BOOLEAN NOT NULL DEFAULT FALSE
	, created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT CURRENT_TIMESTAMP
	, updated_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE br_const_data(
	id SERIAL
	, type VARCHAR NOT NULL
	, value VARCHAR
	, PRIMARY KEY(id)
) INHERITS (br_base_table);


-- ps is person
-- tables about personnel

CREATE TABLE ps_base (
	name VARCHAR
	, email VARCHAR 
	, phone VARCHAR
) INHERITS (br_base_table);

CREATE TABLE ps_academy_staff (
	id SERIAL
	, PRIMARY KEY(id)
) INHERITS (ps_base);

CREATE TABLE ps_teacher (
	id SERIAL
	, subject_department_id INTEGER 
	, degree_id INTEGER
	, PRIMARY KEY(id)
) INHERITS (ps_base);

CREATE TABLE ps_student (
	student_code INTEGER
	, major_id INTEGER
	, education_method_id INTEGER
	, PRIMARY KEY(student_code)
) INHERITS (ps_base);


-- tp is topic
-- tables about essay topic

CREATE TABLE tp_topic (
	id SERIAL
	, topic_code INTEGER
	, topic_name VARCHAR
	, semester_id INTEGER
	, major_id INTEGER
	, education_method_id INTEGER
	, min_student_take INTEGER
	, max_student_take INTEGER
	, description TEXT
	, main_task TEXT
	, thesis_task TEXT
	, note TEXT
	, created_by INTEGER
	, PRIMARY KEY(id)
) INHERITS (br_base_table);

CREATE TABLE tp_council(
	id SERIAL
	, subject_department_id INTEGER
	, reserve_room VARCHAR
	, reserve_date DATE
	, start_time TIME WITH TIME ZONE
	, end_time TIME WITH TIME ZONE
	, arr_teacher_id INTEGER[]
	, arr_role_id INTEGER[]
	, PRIMARY KEY(id)
) INHERITS (br_base_table);

CREATE TABLE tp_topic_assign (
	id SERIAL
	, topic_id INTEGER
	, execute_student_code INTEGER
	, guide_teacher_id INTEGER
	, review_teacher_id INTEGER
	, council_id INTEGER
	, PRIMARY KEY(id)
) INHERITS (br_base_table);


-- sc is score
-- tables about score

CREATE TABLE sc_criterion_template(
	id SERIAL
	, criterion_template_name VARCHAR
	, score_type_id INTEGER
	, score_method_id INTEGER
	, description TEXT
	, PRIMARY KEY(id)
) INHERITS (br_base_table);

CREATE TABLE sc_criterion(
	id SERIAL
	, criterion_template_id INTEGER
	, criterion_name VARCHAR
	, priority REAL NOT NULL DEFAULT 1
	, description TEXT
	, PRIMARY KEY(id)
) INHERITS (br_base_table);

CREATE TABLE sc_score(
	id SERIAL
	, topic_id INTEGER
	, criterion_template_id INTEGER
	, teacher_id INTEGER
	, student_code INTEGER
	, arr_score INTEGER []
	, comment TEXT
	, PRIMARY KEY(id)
) INHERITS (br_base_table);


-------------------------------------------------------------------------------------
-- add foreign key
ALTER TABLE IF EXISTS ps_teacher ADD CONSTRAINT ps_teacher_subject_department_id_fkey 
	FOREIGN KEY(subject_department_id) REFERENCES br_const_data(id);
ALTER TABLE IF EXISTS ps_teacher ADD CONSTRAINT ps_teacher_subject_degree_id_fkey 
	FOREIGN KEY(degree_id) REFERENCES br_const_data(id);

ALTER TABLE IF EXISTS ps_student ADD CONSTRAINT ps_student_education_method_id_fkey 
	FOREIGN KEY(education_method_id) REFERENCES br_const_data(id);
ALTER TABLE IF EXISTS ps_student ADD CONSTRAINT ps_student_major_id_fkey 
	FOREIGN KEY(major_id) REFERENCES br_const_data(id);

ALTER TABLE IF EXISTS tp_topic ADD CONSTRAINT tp_topic_created_by_fkey 
	FOREIGN KEY(created_by) REFERENCES ps_academy_staff(id);
ALTER TABLE IF EXISTS tp_topic ADD CONSTRAINT tp_topic_education_method_id_fkey 
	FOREIGN KEY(education_method_id) REFERENCES br_const_data(id);
ALTER TABLE IF EXISTS tp_topic ADD CONSTRAINT tp_topic_major_id_fkey 
	FOREIGN KEY(major_id) REFERENCES br_const_data(id);
	
ALTER TABLE IF EXISTS tp_council ADD CONSTRAINT tp_council_subject_department_id_fkey 
	FOREIGN KEY(subject_department_id) REFERENCES br_const_data(id);

ALTER TABLE IF EXISTS tp_topic_assign ADD CONSTRAINT tp_topic_assign_topic_id_fkey 
	FOREIGN KEY(topic_id) REFERENCES tp_topic(id);
ALTER TABLE IF EXISTS tp_topic_assign ADD CONSTRAINT tp_topic_assign_execute_student_code_fkey 
	FOREIGN KEY(execute_student_code) REFERENCES ps_student(student_code);
ALTER TABLE IF EXISTS tp_topic_assign ADD CONSTRAINT tp_topic_assign_guide_teacher_id_fkey 
	FOREIGN KEY(guide_teacher_id) REFERENCES ps_teacher(id);
ALTER TABLE IF EXISTS tp_topic_assign ADD CONSTRAINT tp_topic_assign_review_teacher_id_fkey 
	FOREIGN KEY(review_teacher_id) REFERENCES ps_teacher(id);
ALTER TABLE IF EXISTS tp_topic_assign ADD CONSTRAINT tp_topic_assign_council_id_fkey 
	FOREIGN KEY(council_id) REFERENCES tp_council(id);
	
ALTER TABLE IF EXISTS sc_criterion_template ADD CONSTRAINT sc_criterion_template_score_type_id_fkey
	FOREIGN KEY(score_type_id) REFERENCES br_const_data(id);
ALTER TABLE IF EXISTS sc_criterion_template ADD CONSTRAINT sc_criterion_template_score_method_id_fkey
	FOREIGN KEY(score_method_id) REFERENCES br_const_data(id);
	
ALTER TABLE IF EXISTS sc_criterion ADD CONSTRAINT sc_criterion_criterion_template_id_fkey
	FOREIGN KEY(criterion_template_id) REFERENCES sc_criterion_template(id);
	
ALTER TABLE IF EXISTS sc_score ADD CONSTRAINT sc_score_topic_id_fkey
	FOREIGN KEY(topic_id) REFERENCES tp_topic(id);
ALTER TABLE IF EXISTS sc_score ADD CONSTRAINT sc_score_criterion_template_id_fkey
	FOREIGN KEY(criterion_template_id) REFERENCES sc_criterion_template(id);
ALTER TABLE IF EXISTS sc_score ADD CONSTRAINT sc_score_teacher_id_fkey
	FOREIGN KEY(teacher_id) REFERENCES ps_teacher(id);
ALTER TABLE IF EXISTS sc_score ADD CONSTRAINT sc_score_student_code_fkey
	FOREIGN KEY(student_code) REFERENCES ps_student(student_code);
	
	
	
	
	
	
	