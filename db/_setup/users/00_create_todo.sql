set define '^'
set verify off

@../env.sql

prompt
prompt
prompt **********************************************************************
prompt ***  USER CREATION: ^db_app_user
prompt **********************************************************************
prompt
prompt

prompt ^db_app_user droppen
declare
  v_check number(1) := 0;
begin
  select 1
    into v_check
    from all_users
   where username = upper('^db_app_user');
  dbms_output.put_line('drop user ^db_app_user cascade');
  execute immediate 'drop user ^db_app_user cascade';
exception
  when no_data_found then
    null; -- ok, nothing to drop  ´
end;
/

prompt create user ^db_app_user identified by "^db_app_pwd" default tablespace ^deftablespace
create user ^db_app_user
  identified by "^db_app_pwd"
  default tablespace ^deftablespace
  temporary tablespace temp
  profile default
  account unlock;


-- 2 roles for ^db_app_user
grant connect to ^db_app_user;
alter user ^db_app_user default role all;
grant create any context to ^db_app_user;

prompt **********************************************************************
prompt
prompt-- 2 tablespace quotas for todo
alter user todo quota unlimited on ^deftablespace;


-- 11 system privileges for todo
grant create any context to todo;
grant create any directory to todo;
grant create any procedure to todo;
grant create job to todo;
grant create procedure to todo;
grant create sequence to todo;
grant create synonym to todo;
grant create public synonym to todo;
grant create table to todo;
grant create trigger to todo;
grant create type to todo;
grant create view to todo;
grant create session to todo;

-- 5 object privileges for todo
grant execute on sys.dbms_crypto to todo;
grant execute on sys.utl_file to todo;
grant execute on sys.utl_http to todo;
grant execute on sys.dbms_rls to todo;


prompt **********************************************************************
prompt
prompt