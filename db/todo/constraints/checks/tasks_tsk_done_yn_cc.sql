alter table tasks add (
  constraint tasks_tsk_done_yn_cc
  check (tsk_done_yn in ('Y', 'N'))
  enable validate
);