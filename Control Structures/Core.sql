declare
    var1 integer;
    var2 int;
    -- this is variable declare section
begin
var1 := 5;
var2 := 10;
dbms_output.put_line('Hello World');
/* this is my 
coding section */
end;

declare 
    var1 varchar(6) := 'world';
begin
dbms_output.put_line('Hello ' || var1); -- Concatenation operator ||
end;


declare 
    var1 int;
begin
var1 := &var1;
if var1 > 5
    then dbms_output.put_line(var1);
end if;
end;

