CREATE TABLE performance_parts (
Performance_ID VARCHAR2 (2),
Employee_name VARCHAR2 (80),
Weight NUMBER
);

CREATE TABLE evaluations (
Evaluation_id NUMBER (8,0), Employee_id NUMBER (6,0),
Evaluation_date DATE, Job_id VARCHAR2 (10),
Manager_id NUMBER (6,0), Department_id NUMBER (4,0),
Total_score NUMBER (3,0)
);

CREATE TABLE scores (
Evaluation_id NUMBER (8,0),
Performance_id VARCHAR2 (2),
Score NUMBER (1,0)
);

ALTER TABLE performance_parts MODIFY ( Weight NOT NULL);

ALTER TABLE scores ADD CONSTRAINT SCORES_EVAL_PERF UNIQUE (evaluation_id, performance_id);

ALTER TABLE performance_parts ADD CONSTRAINT PERF_PERF_ID PRIMARY KEY(performance_id);

ALTER TABLE evaluations ADD CONSTRAINT EVAL_EVAL_ID PRIMARY KEY(evaluation_id);

ALTER TABLE Scores ADD CONSTRAINT SCORES_EVAL_FK FOREIGN KEY (Evaluation_id) REFERENCES evaluations (evaluation_id);

ALTER TABLE Scores ADD CONSTRAINT SCORES_PERF_FK FOREIGN KEY (Evaluation_id) REFERENCES evaluations (evaluation_id);

ALTER TABLE Evaluations ADD CONSTRAINT EMP_ID_FK FOREIGN KEY (Employee_id) REFERENCES employee (employee_id);

ALTER TABLE Scores ADD CONSTRAINT CHK_score CHECK (Score>=0 AND Score<+9);
