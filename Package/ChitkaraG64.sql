create or replace package dis
is
procedure printAll;
puvar int := 0;
end dis;

create or replace package body dis
is
    prvar int := 1;
    procedure printAll
    is
    begin
    dbms_output.put_line('Hello PrintAll '|| puvar||' ' || prvar);
    end;
begin
puvar := puvar + 10;
prvar := prvar + 100;
end;

begin
dis.printAll;
dbms_output.put_line(dis.puvar);
dis.printAll;
end;

create or replace package StudentOps
is
    procedure addStudent(cname student.name%type,
                        cdept student.deptid%type,
                        cage student.age%type);
    procedure delStudent(cid student.id%type);
    procedure printAllStudents;
    function countStudents return int;
end;

create or replace package body StudentOps
is
    pr_id int;
    procedure addStudent(cname student.name%type,
                        cdept student.deptid%type,
                        cage student.age%type)
    is
    begin
    pr_id := pr_id+1;
    insert into student values (pr_id,cname,cdept,cage);
    end;
    
    procedure delStudent(cid student.id%type);
    procedure printAllStudents;
    function countStudents return int;
begin
select max(id) into pr_id from students;
end;








