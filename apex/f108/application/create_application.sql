prompt --application/create_application
begin
--   Manifest
--     FLOW: 108
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.2'
,p_default_workspace_id=>28800139215567867
,p_default_application_id=>108
,p_default_id_offset=>29020743734719622
,p_default_owner=>'TODO'
);
wwv_flow_imp.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'TODO')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'dbFlow - ToDo Demo')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'TODO')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'1C2077BD3E442FC0BAFDDA05C1C678F8ADB9713A7307DB5B6BACAB820BB6E350'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'21.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_imp.id(44625286162184417)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'dbFlow - ToDo Demo'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'1.1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'dbFlow - ToDo Demo'
,p_last_updated_by=>'WSADMIN'
,p_last_upd_yyyymmddhh24miss=>'20230704193353'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>63
,p_print_server_type=>'NATIVE'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'Y'
,p_pwa_manifest_display=>'standalone'
,p_pwa_manifest_orientation=>'any'
,p_pwa_apple_status_bar_style=>'black-translucent'
);
wwv_flow_imp.component_end;
end;
/
