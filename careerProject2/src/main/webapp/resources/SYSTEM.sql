DROP USER SPRING_CAREER CASCADE; 
CREATE USER SPRING_CAREER IDENTIFIED BY kkn DEFAULT TABLESPACE users TEMPORARY
TABLESPACE temp PROFILE DEFAULT;
GRANT CONNECT, RESOURCE TO SPRING_CAREER;
GRANT CREATE VIEW, CREATE SYNONYM TO SPRING_CAREER;
ALTER USER SPRING_CAREER ACCOUNT UNLOCK;
