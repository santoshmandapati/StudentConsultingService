
CREATE SEQUENCE student_id_seq START 200001;

CREATE TABLE student (
	student_id integer PRIMARY KEY DEFAULT nextval('student_id_seq'),
	first_name varchar(100) NOT NULL,
	last_name varchar(100) NOT NULL,
	email varchar(100) NOT NULL,
	phone varchar(100) NOT NULL,
	gender varchar(20),
  	dob date
);

CREATE SEQUENCE education_id_seq START 300001;

CREATE TABLE education (
	education_id integer PRIMARY KEY DEFAULT nextval('education_id_seq'),
	student_id integer REFERENCES student(student_id),
	secondary_school varchar(250),
	secondary_school_passed_out_year numeric,
	secondary_school_gpa numeric,

	inter_school varchar(250),
	inter_school_passed_out_year numeric,
	inter_gpa numeric,

	under_grad_school varchar(250),
	under_grad_school_passed_out_year numeric,
	under_grad_gpa numeric,
	under_grad_backlog_count numeric,

	post_grad_school varchar(250),
	post_grad_school_passed_out_year numeric,
	post_grad_gpa numeric,
	post_grad_backlog_count numeric
);

CREATE SEQUENCE exam_scores_id_seq START 400001;

CREATE TABLE exam_scores(
	exam_scores_id integer PRIMARY KEY DEFAULT nextval('exam_scores_id_seq'),
	student_id integer REFERENCES student(student_id),

	gre_overall_score numeric,
    gre_quant_score numeric,
    gre_verbal_score numeric,
    gre_awa_score numeric,

	english_test_type varchar(100),
    english_overall_score numeric,
    english_listening_score numeric,
    english_speaking_score numeric,
    english_writing_score numeric,
    english_reading_score numeric
);

CREATE SEQUENCE job_details_id_seq START 500001;

CREATE TABLE job_details(
	job_details_id integer PRIMARY KEY DEFAULT nextval('job_details_id_seq'),
	student_id integer REFERENCES student(student_id),

	years_experience numeric,
    job_title varchar(200)
);

CREATE SEQUENCE student_preferences_id_seq START 600001;

CREATE TABLE student_preferences(
	student_preferences_id integer PRIMARY KEY DEFAULT nextval('student_preferences_id_seq'),
	student_id integer REFERENCES student(student_id),

	preferred_intake varchar(200),
    preferred_country varchar(200),
    preferred_program varchar(200),
    preferred_fee_range varchar(200)
);

CREATE SEQUENCE short_listed_universities_id_seq START 700001;

CREATE TABLE short_listed_universities(
	short_listed_universities_id integer PRIMARY KEY DEFAULT nextval('short_listed_universities_id_seq'),
	student_id integer REFERENCES student(student_id),

	name varchar(250),
    course varchar(250),
    degree varchar(250),
    country varchar(250),
    application_fee varchar(250),
    status varchar(250)
);

CREATE SEQUENCE status_id_seq START 800001;

CREATE TABLE status(
	status_id integer PRIMARY KEY DEFAULT nextval('status_id_seq'),
	student_id integer REFERENCES student(student_id),

	current_status varchar(100),
    comments text
);