--para ativar os prints, s� uma vez por sess�o, ent�o tem q fazer sempre q sair da sess�o se quiser
set serveroutput on

--DECLARE � PARA CRIAR AS VARIAVEIS

Declare

--Conven��o eles criam as variaveis com o come�o de V

-- : � o de atribui��o no que � o +

--& para aparecer o uma caixa de dialogo, exemplo: &Mensagem ou &nome, aparece na caixa de dialogo o que vc colocar na frente do &

V_NOME varchar2(30) := '&NOME';
V_NUMERO NUMBER(9,2) :=&Numero;


--Obrigatorio begin para come�ar o pl/sql
Begin
    
--Codigo para dar print
    --Concatena��o ||
    dbms_output.put_line(V_NOME || ' ' || v_numero);
    dbms_output.put_line(V_NUMERO);
    
--Obrigatorio end para finalizar o pl/sql    
end;