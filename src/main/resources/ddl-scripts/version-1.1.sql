ALTER TABLE IF EXISTS education
ALTER COLUMN secondary_school_gpa SET DATA TYPE varchar(10);

ALTER TABLE IF EXISTS education
ALTER COLUMN inter_gpa SET DATA TYPE varchar(10);

ALTER TABLE IF EXISTS education
ALTER COLUMN under_grad_gpa SET DATA TYPE varchar(10);

ALTER TABLE IF EXISTS education
ALTER COLUMN post_grad_gpa SET DATA TYPE varchar(10);

ALTER TABLE IF EXISTS education
ADD COLUMN IF NOT EXISTS under_grad_course_major varchar(100);

ALTER TABLE IF EXISTS education
ADD COLUMN IF NOT EXISTS post_grad_course_major varchar(100);

------------------

ALTER TABLE IF EXISTS exam_scores
ALTER COLUMN gre_overall_score SET DATA TYPE varchar(10);

ALTER TABLE IF EXISTS exam_scores
ALTER COLUMN gre_quant_score SET DATA TYPE varchar(10);

ALTER TABLE IF EXISTS exam_scores
ALTER COLUMN gre_verbal_score SET DATA TYPE varchar(10);

ALTER TABLE IF EXISTS exam_scores
ALTER COLUMN gre_awa_score SET DATA TYPE varchar(10);

ALTER TABLE IF EXISTS exam_scores
ALTER COLUMN english_overall_score SET DATA TYPE varchar(10);

ALTER TABLE IF EXISTS exam_scores
ALTER COLUMN english_listening_score SET DATA TYPE varchar(10);

ALTER TABLE IF EXISTS exam_scores
ALTER COLUMN english_speaking_score SET DATA TYPE varchar(10);

ALTER TABLE IF EXISTS exam_scores
ALTER COLUMN english_writing_score SET DATA TYPE varchar(10);

ALTER TABLE IF EXISTS exam_scores
ALTER COLUMN english_reading_score SET DATA TYPE varchar(10);

-----------------------

ALTER TABLE IF EXISTS job_details
ALTER COLUMN years_experience SET DATA TYPE varchar(50);