/**
  modified lines in tasks.sql
    +  tsk_due_date         date,
**/

alter table tasks add (
  tsk_due_date         date
);
