create or replace trigger tp
after update of age
on student
for each row
declare
-- age int := OLD.age;
begin
dbms_output.put_line(:old.age||' ' || :new.age);
-- dbms_output.put_line('Row Updated');
end;


create or replace trigger tp
after update of age
on student
for each row when (new.id >= 7)
declare
-- age int := OLD.age;
begin
dbms_output.put_line(:old.age||' ' || :new.age);
-- dbms_output.put_line('Row Updated');
end;


create or replace trigger trigAll
after insert or update or delete
on student
for each row
begin
case
when inserting then dbms_output.put_line('Insert');
when updating then dbms_output.put_line('Update');
when deleting then dbms_output.put_line('Delete');
end case;
end;


create or replace trigger ageR
before insert on student
for each row when (new.age < 18)
begin 
:new.age := 18;
end;

insert into student values(14,'Rohit',5,10);



update student
set age = age-2;

select * from student;





declare
a int := 10;
b int := 0;
c int := 0;
begin
dbms_output.put_line('Hello');
c := a/b;
dbms_output.put_line('Bye');
exception
when zero_divide then dbms_output.put_line('Divide by Zero Error');
end;

declare 
a int;
b int;
begin
a := 10;
b := 0;
a := a/b;
Exception
when value_Error then dbms_output.put_line('Wrong Value');
when others then dbms_output.put_line('Error');
end;


declare
cid int := &cid;
id_except Exception;
begin
if cid < 0 then raise id_except;
end if;
dbms_output.put_line('ID is correct');
exception
when id_except then dbms_output.put_line('Incorrect ID');
end;
