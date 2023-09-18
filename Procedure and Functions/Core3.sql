create or replace procedure print_disp(var1 varchar,var2 varchar)
is
begin
dbms_output.put_line(var1 || var2);
end;


create or replace procedure print_disp(var1 varchar,var2 varchar,var3 varchar := '!')
is
begin
dbms_output.put_line(var1 || var2 || var3);
end;


create or replace procedure addsum(var1 in out int,var2 in out int)
is
var3 int;
begin
var3 := var1+var2;
dbms_output.put_line(var3);
var1 := 0;
var2 := 0;
end;


declare 
var1 int := 10;
var2 int := 20;
begin
print_disp(var2 => 'World ',var1 => 'Hello ',var3 => '!');
-- addsum(var1,var2);
-- dbms_output.put_line(var1 || ' ' || var2);
end;


create or replace function addS(num1 in out int,num2 in out int)
return int
is 
var3 int;
begin
var3 := num1 + num2;
num1 := 0;
num2 := 0;
return var3;
end;


declare 
var1 int := 10;
var2 int := 20;
num3 int;
begin
num3 := adds(var1,var2);
dbms_output.put_line(num3 || ' ' ||var1 || ' ' || var2);
end;

create or replace function ft(n int) return int
is
begin
if n = 0 then return 1;
else return ft(n-1)*n;
end if;
end;

declare
n int;
begin
n := ft(5);
dbms_output.put_line(n);
end;


create or replace function countS(dept_id int) return int
is
ans int;
begin

select count(*)into ans 
from student where student.deptid = dept_id;
return ans;
end;














