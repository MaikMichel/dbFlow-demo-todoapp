create or replace package apx_tasks_util is
  procedure save_task_on_P2;
  procedure fetch_row_on_P2;
  procedure delete_row_on_P2;

  procedure toggle_done;
end;
/