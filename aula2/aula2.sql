Aula2 21/02/2025

SET SERVEROUTPUT ON

Declare

    v_nome varchar2(30) := 'Presunto';
    v_sal number(7,2) := 1000;
    
BEGIN

    DBMS_OUTPUT.PUT_LINE(v_nome || ' recebe ' || to_char(v_sal,'9999.00'));
    
--  Jeito errado  
--  select ename from emp where sal > 3000

    select ename, sal into v_name, v_sal from emp where sal > 3000;
    
    DBMS_OUTPUT.PUT_LINE(v_nome);
    
END;

