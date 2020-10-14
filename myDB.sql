CREATE TABLE identity_demo(
person_id NUMBER GENERATED ALWAYS AS IDENTITY,description VARCHAR(50) NOT NULL
);

INSERT INTO identity_demo (id, description)
VALUES(3,'Hello World');

SELECT * FROM identity_demo;

DROP TABLE identity_demo;

CREATE TABLE identity_demo (id NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY,
description VARCHAR(100) not null);
