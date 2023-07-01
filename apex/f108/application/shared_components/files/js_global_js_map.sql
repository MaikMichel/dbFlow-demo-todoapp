prompt --application/shared_components/files/js_global_js_map
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
wwv_flow_imp.g_varchar2_table(1) := '7B2276657273696F6E223A332C22736F7572636573223A5B2230225D2C226E616D6573223A5B226E6F7468696E674861734368616E676564222C22736F6D657468696E674368616E676564222C2261706578222C226A5175657279222C2268696465222C';
wwv_flow_imp.g_varchar2_table(2) := '2273686F77222C22616464436C617373222C226973222C227574696C222C22676574546F7041706578222C2274657874222C2273686F774572726F724D657373616765222C226572726F724D657373616765222C226D657373616765222C22636C656172';
wwv_flow_imp.g_varchar2_table(3) := '4572726F7273222C2273686F774572726F7273222C2274797065222C226C6F636174696F6E222C22756E73616665222C2273686F77537563636573734D657373616765222C22737563636573734D657373616765222C2273686F77506167655375636365';
wwv_flow_imp.g_varchar2_table(4) := '7373222C2224222C2264656C6179222C22666164654F7574225D2C226D617070696E6773223A22414149412C49414149412C6D4241416F422C45414378422C53414153432C6D4241434C432C4B41414B432C4F41414F2C694241416942432C4F41453742';
wwv_flow_imp.g_varchar2_table(5) := '462C4B41414B432C4F41414F2C694341416943452C4F41414F432C534141532C53414578444A2C4B41414B432C4F41414F2C6B4241416B42492C474141472C61414370434C2C4B41414B432C4F41414F2C714341417143452C4F41414F432C534141532C';
wwv_flow_imp.g_varchar2_table(6) := '5341476E454A2C4B41414B4D2C4B41414B432C614141614E2C4F41414F2C6B4341416B434F2C4B41414B2C6341457245562C6D4241416F422C45415176422C53414153572C694241416942432C4741437A42562C4B41414B572C51414151432C63414362';
wwv_flow_imp.g_varchar2_table(7) := '5A2C4B41414B572C51414151452C574141572C43414370422C43414349432C4B4141592C5141435A432C534141592C4F41435A4A2C51414159442C4541435A4D2C514141592C4B415374422C53414153432C6D4241416D42432C4741437442412C494143';
wwv_flow_imp.g_varchar2_table(8) := '466C422C4B41414B572C51414151512C674241416942442C4741433942452C454141452C6F4241416F42432C4D41414D2C4B41414D432C51414151227D';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(44843286075425976)
,p_file_name=>'js/global.js.map'
,p_mime_type=>'application/octet-stream'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
