create table tasks (
  tsk_id               number                       not null,
  tsk_title            varchar2(500 char)           not null,
  tsk_description      varchar2(4000 char),
  tsk_done_yn          varchar2(1 char) default 'N' not null,
  tsk_due_date         date,
  tsk_created_at       date                         not null,
  tsk_created_by       varchar2(250 char)           not null,
  tsk_modified_at      date                         not null,
  tsk_modified_by      varchar2(250 char)           not null
);

comment on table tasks is 'All the tasks';
comment on column tasks.tsk_id          is '{cmt:"PK", req:"N"}';
comment on column tasks.tsk_title       is 'The Title Task itself';
comment on column tasks.tsk_description is 'Description of the tasks';
comment on column tasks.tsk_done_yn     is 'Done Y/N';

-- File: indexes/primaries/tasks_tsk_id_pk.sql
-- File: constraints/primaries/tasks_tsk_id_pk.sql
-- File: constraints/checks/tasks_tsk_done_yn_cc.sql
-- File: sources/triggers/tasks_biu.sql
