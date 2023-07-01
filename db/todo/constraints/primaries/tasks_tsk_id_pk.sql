alter table tasks add (
  constraint tsk_id_pk
  primary key (tsk_id)
  using index tasks_tsk_id_pk
  enable validate
);