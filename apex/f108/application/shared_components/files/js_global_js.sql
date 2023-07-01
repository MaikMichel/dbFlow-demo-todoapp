prompt --application/shared_components/files/js_global_js
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
wwv_flow_imp.g_varchar2_table(1) := '2F2A2A0D0A202A207768656E2075736572206368616E67657320736F6D657468696E672C20746865206F6B20627574746F6E2077696C6C20626520646973706C617965640D0A202A20616E6420636C6F7365202D20627574746F6E2077696C6C20686964';
wwv_flow_imp.g_varchar2_table(2) := '6520616E642063616E63656C202D20627574746F6E2077696C6C2062652073686F776E0D0A202A2F0D0A766172206E6F7468696E674861734368616E676564203D20747275653B0D0A66756E6374696F6E20736F6D657468696E674368616E6765642829';
wwv_flow_imp.g_varchar2_table(3) := '207B0D0A20202020617065782E6A517565727928222E6F632D62746E2D636C6F736522292E6869646528293B0D0A0D0A20202020617065782E6A517565727928222E6F632D62746E2D6F6B3A6E6F74282E6F6E2D6F632D77697A6172642922292E73686F';
wwv_flow_imp.g_varchar2_table(4) := '7728292E616464436C617373282770756C736527293B0D0A0D0A202020206966202821617065782E6A517565727928222E6F632D62746E2D63616E63656C22292E697328223A76697369626C652229297B0D0A202020202020617065782E6A5175657279';
wwv_flow_imp.g_varchar2_table(5) := '28222E6F632D62746E2D63616E63656C3A6E6F74282E6F6E2D6F632D77697A6172642922292E73686F7728292E616464436C617373282770756C736527293B0D0A202020207D0D0A0D0A20202020617065782E7574696C2E676574546F70417065782829';
wwv_flow_imp.g_varchar2_table(6) := '2E6A517565727928222E6F632D646C67202E75692D6469616C6F672D7469746C6520237665726222292E7465787428226265617262656974656E22293B0D0A0D0A202020206E6F7468696E674861734368616E676564203D2066616C73653B0D0A7D0D0A';
wwv_flow_imp.g_varchar2_table(7) := '0D0A0D0A2F2A2A0D0A202A0D0A202A2040706172616D207B537472696E677D206572726F724D657373616765204572726F726D65737361676520746F20646973706C61790D0A202A2F0D0A2066756E6374696F6E2073686F774572726F724D6573736167';
wwv_flow_imp.g_varchar2_table(8) := '65286572726F724D65737361676529207B0D0A2020617065782E6D6573736167652E636C6561724572726F727328293B0D0A2020617065782E6D6573736167652E73686F774572726F7273285B0D0A2020202020207B0D0A202020202020202020207479';
wwv_flow_imp.g_varchar2_table(9) := '70653A20202020202020226572726F72222C0D0A202020202020202020206C6F636174696F6E3A2020202270616765222C0D0A202020202020202020206D6573736167653A202020206572726F724D6573736167652C0D0A20202020202020202020756E';
wwv_flow_imp.g_varchar2_table(10) := '736166653A202020202066616C73650D0A2020202020207D0D0A20205D293B0D0A7D0D0A0D0A2F2A2A0D0A202A0D0A202A2040706172616D207B537472696E677D20737563636573734D65737361676520537563636573736D65737361676520746F2064';
wwv_flow_imp.g_varchar2_table(11) := '6973706C61790D0A202A2F0D0A66756E6374696F6E2073686F77537563636573734D65737361676528737563636573734D65737361676529207B0D0A202069662028737563636573734D65737361676520297B0D0A20202020617065782E6D6573736167';
wwv_flow_imp.g_varchar2_table(12) := '652E73686F7750616765537563636573732820737563636573734D6573736167652020293B0D0A2020202024282223745F416C6572745F5375636365737322292E64656C61792831303030292E666164654F757428333030293B0D0A20207D0D0A7D';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(44842825580425973)
,p_file_name=>'js/global.js'
,p_mime_type=>'application/x-javascript'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/