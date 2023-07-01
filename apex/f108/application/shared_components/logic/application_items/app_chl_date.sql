prompt --application/shared_components/logic/application_items/app_chl_date
begin
--   Manifest
--     APPLICATION ITEM: APP_CHL_DATE
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.2'
,p_default_workspace_id=>28800139215567867
,p_default_application_id=>108
,p_default_id_offset=>29020743734719622
,p_default_owner=>'TODO'
);
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(44886867998231031)
,p_name=>'APP_CHL_DATE'
,p_protection_level=>'I'
);
wwv_flow_imp.component_end;
end;
/
