create or replace package body apx_tasks_util is
  C_SCOPE_PREFIX constant varchar2(31) := lower($$plsql_unit) || '.';

  function get_row(p_tsk_id in tasks.tsk_id%type) return tasks%rowtype is
    l_tsk_row   tasks%rowtype;
  begin
    if p_tsk_id is not null then
      select *
        into l_tsk_row
        from tasks
      where tsk_id = p_tsk_id;
    end if;

    return l_tsk_row;
  end;

  procedure fetch_row_on_P2 is
    l_tsk_row   tasks%rowtype;
  begin
    -- fetch
    l_tsk_row := get_row(p_tsk_id => apex_util.get_session_state('P2_TSK_ID'));

    -- bring to session
    apex_util.set_session_state('P2_TSK_TITLE',          l_tsk_row.tsk_title);
    apex_util.set_session_state('P2_TSK_DESCRIPTION',    l_tsk_row.tsk_description);
    apex_util.set_session_state('P2_TSK_DONE_YN',        l_tsk_row.tsk_done_yn);
    apex_util.set_session_state('P2_TSK_DUE_DATE',       l_tsk_row.tsk_due_date);
  end;

  procedure save_task_on_P2 is
    l_tsk_row       tasks%rowtype;
  begin
    l_tsk_row.tsk_id             := apex_util.get_session_state('P2_TSK_ID');

    -- fetch
    l_tsk_row := get_row(p_tsk_id => apex_util.get_session_state('P2_TSK_ID'));


    l_tsk_row.tsk_title          := apex_util.get_session_state('P2_TSK_TITLE');
    l_tsk_row.tsk_description    := apex_util.get_session_state('P2_TSK_DESCRIPTION');
    l_tsk_row.tsk_done_yn        := apex_util.get_session_state('P2_TSK_DONE_YN');
    l_tsk_row.tsk_due_date       := apex_util.get_session_state('P2_TSK_DUE_DATE');

    if l_tsk_row.tsk_id is null then
      insert into tasks values l_tsk_row  return tsk_id into l_tsk_row.tsk_id;
    else
      update tasks
         set row = l_tsk_row
       where tsk_id = l_tsk_row.tsk_id;
    end if;


    apex_util.set_session_state('APP_DLG_CLOSE_MSG', 'Task successfully saved');

  end;

  procedure delete_row_on_P2 is
    l_tsk_id    tasks.tsk_id%type := apex_util.get_session_state('P2_TSK_ID');
  begin
    delete from tasks where tsk_id = l_tsk_id;

    apex_util.set_session_state('APP_DLG_CLOSE_MSG', 'Task successfully deleted');
  end;

  procedure toggle_done is
    l_tsk_row       tasks%rowtype;
  begin
    l_tsk_row := get_row(p_tsk_id => apex_application.g_x01);
    l_tsk_row.tsk_done_yn := case when l_tsk_row.tsk_done_yn = 'Y' then 'N' else 'Y' end;
    update tasks
       set row = l_tsk_row
     where tsk_id = l_tsk_row.tsk_id;

    apex_json.open_object;
      apex_json.write('message', 'Task set to ' ||  case when l_tsk_row.tsk_done_yn = 'Y' then 'done' else 'open' end);
      apex_json.write('done_yn', l_tsk_row.tsk_done_yn);
      apex_json.write('success', true);
    apex_json.close_object;


  end;
end;
/