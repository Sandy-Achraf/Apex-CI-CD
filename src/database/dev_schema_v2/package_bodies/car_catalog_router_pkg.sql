create or replace package body wksp_elwagha50.car_catalog_router_pkg as

/* =====================================================
   EDIT (Dialog Page 352)
===================================================== */
    function edit_url (
        p_car_type_id in varchar2
    ) return varchar2 is
    begin
        return apex_page.get_url(
            p_page   => 352,
            p_items  => 'P352_CAR_TYPE_ID',
            p_values => p_car_type_id
        );
    end edit_url;

/* =====================================================
   PRICES (Page 357)
===================================================== */
    function prices_url (
        p_car_type_id in varchar2
    ) return varchar2 is
    begin
        return apex_page.get_url(
            p_page   => 357,
            p_items  => 'P357_CAR_TYPE_ID',
            p_values => p_car_type_id
        );
    end prices_url;

/* =====================================================
   GALLERY (Page 354)
===================================================== */
    function gallery_url (
        p_car_type_id in varchar2
    ) return varchar2 is
    begin
        return apex_page.get_url(
            p_page   => 354,
            p_items  => 'P354_ID',
            p_values => p_car_type_id
        );
    end gallery_url;

/* =====================================================
   VIEW (Optional)
===================================================== */
    function view_url (
        p_car_type_id in varchar2
    ) return varchar2 is
    begin
        return apex_page.get_url(
            p_page   => 360, -- change if needed
            p_items  => 'P360_CAR_TYPE_ID',
            p_values => p_car_type_id
        );
    end view_url;

end car_catalog_router_pkg;
/


-- sqlcl_snapshot {"hash":"1e4d5ea678b02c60d6912e8900f395c013cad032","type":"PACKAGE_BODY","name":"CAR_CATALOG_ROUTER_PKG","schemaName":"WKSP_ELWAGHA50","sxml":""}