-- Aula2 21/02/2025

SET SERVEROUTPUT ON

Declare

    v_nome varchar2(30) := 'Presunto';
    v_sal number(7,2) := 1000.72;
    v_hoje DATE := SYSDATE;
    
BEGIN

--  L é o $ quando printar vai mostrar o $*****,**
    DBMS_OUTPUT.PUT_LINE(v_nome || ' recebe ' || to_char(v_sal,'L9999.00') || v_hoje);
    
--  Jeito errado  
--  select ename from emp where sal > 3000

    select ename, sal into v_name, v_sal from emp where sal > 3000;

    v_hoje := v_hoje +1;
    
    DBMS_OUTPUT.PUT_LINE(v_nome || v_sal || v_hoje);
    
END;

