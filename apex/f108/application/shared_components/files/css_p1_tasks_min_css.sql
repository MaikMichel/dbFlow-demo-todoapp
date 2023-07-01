prompt --application/shared_components/files/css_p1_tasks_min_css
begin
--   Manifest
--     APP STATIC FILES: 108
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.2'
,p_default_workspace_id=>28800139215567867
,p_default_application_id=>108
,p_default_id_offset=>29020743734719622
,p_default_owner=>'TODO'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '74642E742D5265706F72742D63656C6C5B686561646572733D54534B5F444F4E455F594E5D2C74642E742D5265706F72742D63656C6C5B686561646572733D54534B5F49445D2C74682E742D5265706F72742D636F6C486561645B686561646572733D54';
wwv_flow_imp.g_varchar2_table(2) := '534B5F444F4E455F594E5D2C74682E742D5265706F72742D636F6C486561645B686561646572733D54534B5F49445D7B6D696E2D77696474683A323070783B77696474683A343070787D';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(51637806204239895)
,p_file_name=>'css/P1_tasks.min.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
