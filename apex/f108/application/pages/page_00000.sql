prompt --application/pages/page_00000
begin
--   Manifest
--     PAGE: 00000
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.2'
,p_default_workspace_id=>28800139215567867
,p_default_application_id=>108
,p_default_id_offset=>29020743734719622
,p_default_owner=>'TODO'
);
wwv_flow_imp_page.create_page(
 p_id=>0
,p_name=>'Global Page'
,p_step_title=>'Global Page'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_page_component_map=>'14'
,p_last_updated_by=>'WSADMIN'
,p_last_upd_yyyymmddhh24miss=>'20230629203811'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44531846444209546)
,p_name=>'OnInput - hide Close and show Ok'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'input:not(.except, .a-Toolbar-input), textarea:not(.except), .ck-content:not(.except)'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'input'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44532016383209547)
,p_event_id=>wwv_flow_imp.id(44531846444209546)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'somethingChanged();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44532084980209548)
,p_name=>'OnChange - hide Close and show Ok'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'select:not(.except),input[type="checkbox"]:not(.except),input.datepicker:not(.except),oj-input-date:not(.except),input.apex-item-popup-lov:not(.except)'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44532169268209549)
,p_event_id=>wwv_flow_imp.id(44532084980209548)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'somethingChanged();'
);
wwv_flow_imp.component_end;
end;
/
