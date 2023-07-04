prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
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
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'dbFlow - ToDo Demo'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/P1_tasks#MIN#.js'
,p_css_file_urls=>'#APP_FILES#css/P1_tasks#MIN#.css'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
,p_last_updated_by=>'WSADMIN'
,p_last_upd_yyyymmddhh24miss=>'20230704193304'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(44529889303209526)
,p_name=>'Tasks'
,p_region_name=>'task-report'
,p_template=>wwv_flow_imp.id(44722703053184468)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--hideNoPagination'
,p_display_point=>'REGION_POSITION_08'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tsk_id, tsk_title, tsk_description, tsk_done_yn, tsk_due_date',
'  from tasks'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>true
,p_query_row_template=>wwv_flow_imp.id(44757989896184481)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44530009611209527)
,p_query_column_id=>1
,p_column_alias=>'TSK_ID'
,p_column_display_sequence=>10
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:2:P2_TSK_ID:#TSK_ID#'
,p_column_linktext=>'<span aria-hidden="true" class="t-Icon fa fa-edit"></span>'
,p_column_link_attr=>' title="Edit Task" class="t-Button t-Button--noLabel t-Button--icon t-Button--hot t-Button--simple"'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44530078348209528)
,p_query_column_id=>2
,p_column_alias=>'TSK_TITLE'
,p_column_display_sequence=>20
,p_column_heading=>'Title'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44530148326209529)
,p_query_column_id=>3
,p_column_alias=>'TSK_DESCRIPTION'
,p_column_display_sequence=>30
,p_column_heading=>'Description'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44530303142209530)
,p_query_column_id=>4
,p_column_alias=>'TSK_DONE_YN'
,p_column_display_sequence=>50
,p_column_heading=>'Done'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<span data-id="#TSK_ID#" data-done="#TSK_DONE_YN#" class="tsk-check-box fa custom-check-#TSK_DONE_YN# fa-2x" ></span>'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(29785621942852103)
,p_query_column_id=>5
,p_column_alias=>'TSK_DUE_DATE'
,p_column_display_sequence=>40
,p_column_heading=>'Due Date'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(44829497095184561)
,p_plug_name=>'dbFlow - ToDo Demo'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(44694849328184459)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(44533708247209564)
,p_plug_name=>'Filter'
,p_parent_plug_id=>wwv_flow_imp.id(44829497095184561)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(44722703053184468)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SMART_FILTERS'
,p_plug_source_type=>'NATIVE_SMART_FILTERS'
,p_filtered_region_id=>wwv_flow_imp.id(44529889303209526)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_02=>'N'
,p_attribute_03=>'10000'
,p_attribute_04=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(44531531870209542)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(44529889303209526)
,p_button_name=>'ADD_TASK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(44794928551184501)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Task'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:2::'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29785820582852105)
,p_name=>'P1_DONE_YN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(44533708247209564)
,p_prompt=>'Done'
,p_source=>'TSK_DONE_YN'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:Done;Y,Open;N'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'D'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44533816829209565)
,p_name=>'P1_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(44533708247209564)
,p_prompt=>'Search'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'ROW'
,p_attribute_04=>'N'
,p_fc_show_chart=>false
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44532823284209555)
,p_name=>'OnClose - refresh task report'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(44529889303209526)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29785943569852106)
,p_event_id=>wwv_flow_imp.id(44532823284209555)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'refresh filter'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(44533708247209564)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44532857516209556)
,p_event_id=>wwv_flow_imp.id(44532823284209555)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'refresh tasks'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(44529889303209526)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44878848018189345)
,p_name=>'OnClick - toggle Done'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.tsk-check-box'
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'#task-report'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44879015116189346)
,p_event_id=>wwv_flow_imp.id(44878848018189345)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'toggleDone(this);'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(44534024686209567)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'TOGGLE_DONE'
,p_process_sql_clob=>'apx_tasks_util.toggle_done;'
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
