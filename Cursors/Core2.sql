declare
sid student.id %TYPE;
sname student.name %TYPE;
begin
select id,name into sid,sname from student where id = 1;
dbms_output.put_line(sid || sname);
end;


declare
srow student %rowtype;
begin
select * into srow from student where id = 1;
dbms_output.put_line(srow.id || srow.name);
end;

declare
srow student %rowtype;
begin
select * into srow from student where id = 1;
if sql%Found then dbms_output.put_line('Data Found');
-- else dbms_output.put_line('No record found');
end if;
end;

declare
srow student %rowtype;
begin
select * into srow from student where id = 12;
if sql%NotFound then dbms_output.put_line('Data NotFound');
-- else dbms_output.put_line('No record found');
end if;
end;


begin 
for i in (select id,name from student where deptid = 3)
loop
dbms_output.put_line(i.id || i.name);
end loop;
end;

declare
cursor getname
is 
select * from student where deptid = 3;

begin 
for i in getname
loop
dbms_output.put_line(i.id || i.name);
end loop;
end;


declare
sid student.id %TYPE;
sname student.name %TYPE;

cursor getname(d_id int)
is 
select id,name from student where deptid = d_id;

begin 
open getname(1);
fetch getname into sid,sname;
while getname%Found
loop
-- dbms_output.put_line(sid || sname);
update student
set name = name||'s'
where id = sid;
fetch getname into sid,sname;
end loop;
close getname;
end;




select * from student where deptid = 1;















