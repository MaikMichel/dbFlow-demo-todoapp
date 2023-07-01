create or replace trigger tasks_biud
  before insert or update
  on tasks
  for each row
begin
  if :new.tsk_id is null then
    :new.tsk_id := to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
  end if;

  if inserting then
    :new.tsk_created_at := sysdate;
    :new.tsk_created_by := nvl(sys_context('APEX$SESSION', 'APP_USER'), user);
  end if;

  :new.tsk_modified_at := sysdate;
  :new.tsk_modified_by := nvl(sys_context('APEX$SESSION', 'APP_USER'), user);
end tasks_biud;
/