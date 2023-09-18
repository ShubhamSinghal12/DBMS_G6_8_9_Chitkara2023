declare 
a int := 18;
begin

if a > 18 then dbms_output.put_line('a greater than 18');
elsif a = 18 then dbms_output.put_line('a is equal to 18');
else dbms_output.put_line('a is grater than 18');

end if;

end;

declare 
a int := 18;
begin
case
when a >= 18 then dbms_output.put_line('a greater than 18');
when a = 18 then dbms_output.put_line('a is equal to 18');
else dbms_output.put_line('a is less than 18');
end case;
end;


declare 
i int  := 1;
n int;
begin
n := &n;
while i <= n
loop
dbms_output.put_line(i);
i := i+1;
end loop;

end;

declare 
i int  := 1;
n int;
begin
-- n := &n;
loop
dbms_output.put_line(i);
i := i+1;
exit when i > 10;
end loop;

end;


declare 
i int  := 1;
n int;
begin
-- n := &n;
for i in 1 .. 10
loop
dbms_output.put_line(i);
end loop;

end;

















