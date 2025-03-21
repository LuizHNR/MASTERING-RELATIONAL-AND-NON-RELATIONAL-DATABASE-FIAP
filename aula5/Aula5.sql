DECLARE 
    v_maior emp.sal%TYPE := 0;
    v_emo emp.emp%TYPE := 0;
    v_cont number := 1;
BEGIN
    select max(sal), max(empno) into v_maior, v_emp from emp;
    
    if v_maior > 3000 then 
        while v_cont < 5 loop
            insert into EMP (EMPNO,SAL) values (v_emp + v_cont, v_maior);
            v_cont := v_cont + 1;
        end loop;
    end if;
END;