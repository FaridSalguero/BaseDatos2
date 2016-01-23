--creearemos una tabla simple para probar pl sql 
CREATE TABLE DANCE(ID_DANCER integer, NOMBRE varchar2(40), EDAD integer);
--TENEMOS EL SERVIDOR EN MODO DE DESARROLLADOR.
--VAMOS A EMPEZAR CON UN BLOQUE PL SQL
SET SERVEROUTPUT ON;

-- SE DECLARA LAS VARIABLES
 DECLARE 
EDAD INTEGER;
YEARS INTEGER;

--AQUI VA LA LOGICA DEL PROGRAMA
BEGIN
YEARS:=21;
EDAD:=YEARS*365;
--IMPRIME EL RESULTADO
DBMS_OUTPUT.PUT_LINE('TU EDAD EN DIAS ES: '||EDAD);
END;
/

-- CREAR UN BLOQUE PL SQL QUE GENERE 200,000 REGIISTRO EN SECUENCIA ASCENDENTE EN LA TABLA DANCE
BEGIN

FOR I IN 1..200000 LOOP
INSERT INTO DANCE VALUES(I,'CAMPOS',44);
     
END LOOP;
END;
/
  --HACEMOS UN SELECT PARA VER QUE DIABLOS HIZO
SELECT * FROM DANCE;

--SISTEMITA DE PELICULAS LA DE SALA SERA TU TAREA

CREATE TABLE PELICULA (ID_PELICULA INTEGER,
                      TITULO VARCHAR2(120),
                      SINOPSIS VARCHAR2(500),
                      CALSIFICACION VARCHAR2(5),
                      CONSTRAINT PK_ID_PELICULA PRIMARY KEY( ID_PELICULA)
                      );
                      
                     DESCRIBE  PELICULA;
CREATE TABLE HORARIOS (ID_HORARIO INTEGER,
                       ID_PELICULA INTEGER,
                       HORARIO VARCHAR2(8),
                       CONSTRAINT PK_ID_HORARIO PRIMARY KEY(ID_HORARIO),
                       CONSTRAINT FK1_ID_PELICULA FOREIGN KEY(ID_PELICULA) REFERENCES PELICULA(ID_PELICULA)
                       );
        
        DESCRIBE HORARIOS;
