prompt --application/shared_components/files/css_global_min_css
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
wwv_flow_imp.g_varchar2_table(1) := '3A726F6F747B2D2D75742D6865726F2D726567696F6E2D7469746C652D666F6E742D66616D696C793A766172282D2D612D626173652D666F6E742D66616D696C79297D2E617065782D69636F6E732D666F6E7461706578202E742D4156504C697374202E';
wwv_flow_imp.g_varchar2_table(2) := '66613A6265666F72657B766572746963616C2D616C69676E3A6D6964646C657D2E637573746F6D2D636865636B2D593A6265666F72657B636F6E74656E743A225C66313461227D2E637573746F6D2D636865636B2D4E3A6265666F72657B636F6E74656E';
wwv_flow_imp.g_varchar2_table(3) := '743A225C66303936227D2E70756C73657B616E696D6174696F6E3A70756C7365202E3373206E6F726D616C3B616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A656173657D406B65796672616D65732070756C73657B30257B7472616E73';
wwv_flow_imp.g_varchar2_table(4) := '666F726D3A7363616C652831297D3530257B7472616E73666F726D3A7363616C6528312E32297D313030257B7472616E73666F726D3A7363616C652831297D7D';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(44854276312656933)
,p_file_name=>'css/global.min.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/