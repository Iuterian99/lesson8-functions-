--! Functions in  PLPGSQL 


--!----------------------------- CALCULATOR ---------------------------------------------------
CREATE OR REPLACE FUNCTION calc(num1 float, num2 float, sign_of text) 
RETURNS float 
LANGUAGE plpgsql
AS $$

DECLARE result float;

BEGIN 
IF 
    (sign_of = '+')
THEN 
    result = num1 + num2;
ELSIF 
    (sign_of = '-')
THEN 
    result = num1 - num2;
ELSIF 
    (sign_of = '*')
THEN 
    result = num1 * num2;
ELSIF 
    (sign_of = '/')
THEN 
    result = num1 / num2;
END IF;

RETURN result;

END;
$$;


select calc(5, 3, '/');

--!------------------------------------------- FIZZBUZZ ---------------------------------------------

CREATE OR REPLACE FUNCTION fizzbuzz(input int) 
RETURNS text
LANGUAGE plpgsql
AS $$

DECLARE result text;

BEGIN 
IF 
    (input % 3 = 0 AND input % 5 = 0)
THEN 
    result = 'FIZZBUZZ';
ELSIF 
    (input % 3 = 0)
THEN 
    result = 'FIZZ';
ELSIF 
    (input % 5 = 0)
THEN 
    result = 'BUZZ';
ELSIF 
    (input % 5 != 0 AND input % 3 != 0)
THEN 
    result = 'It is not divisible by 3 and 5';
END IF;

RETURN result;

END;
$$;


--! -------------------------------------- Input name & age ---------------------------------------------

CREATE OR REPLACE FUNCTION insert(user_name text, user_age int) 
RETURNS text
LANGUAGE plpgsql
AS $$ 
DECLARE result text;
BEGIN 
INSERT INTO users(user_name, user_age) values(user_name, user_age);
result = 'Qoshildi';
RETURN result;
END;
$$;
 