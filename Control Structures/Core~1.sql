CREATE TABLE department (
    id       INT PRIMARY KEY,
    deptname VARCHAR(50) NOT NULL,
    depthead VARCHAR(20)
);

CREATE TABLE student (
    id     INT PRIMARY KEY,
    name   VARCHAR(20) NOT NULL,
    deptid INT,
    age    INT,
    CONSTRAINT fk FOREIGN KEY ( deptid )
        REFERENCES department ( id )
);

INSERT INTO department (
    id,
    deptname
) VALUES (
    1,
    'CSE'
);

INSERT INTO department VALUES (
    2,
    'BCA',
    NULL
);

INSERT INTO department VALUES (
    3,
    'Pharmacy',
    'Chauhan'
);

INSERT INTO department VALUES (
    4,
    'Artitecture',
    'Picaso'
);

INSERT INTO department VALUES (
    5,
    'Maritime',
    'Navy'
);

INSERT INTO student VALUES (
    1,
    'Rahul',
    1,
    20
);

INSERT INTO student VALUES (
    2,
    'Mahesh',
    2,
    20
);

INSERT INTO student VALUES (
    3,
    'Rupesh',
    1,
    20
);

INSERT INTO student VALUES (
    4,
    'Avish',
    4,
    20
);

INSERT INTO student VALUES (
    5,
    'Priyanshu',
    3,
    20
);

INSERT INTO student VALUES (
    6,
    'Ranga',
    3,
    20
);

INSERT INTO student VALUES (
    7,
    'kalesh',
    4,
    20
);

INSERT INTO student VALUES (
    8,
    'chota bheem',
    2,
    20
);

INSERT INTO student VALUES (
    9,
    'Tom',
    1,
    20
);

INSERT INTO student VALUES (
    10,
    'Rahul',
    4,
    23
);

SELECT
    *
FROM
    student;



declare
a int DEFAULT 1;
Begin
-- a := 10;
if a >= 10 
then dbms_output.put_line('Hello World ' || a);
end if;
end;











