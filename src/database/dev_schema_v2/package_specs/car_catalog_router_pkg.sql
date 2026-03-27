create or replace package car_catalog_router_pkg as

  /* ===============================
     EDIT (Dialog)
  ================================ */
    function edit_url (
        p_car_type_id in varchar2
    ) return varchar2;

  /* ===============================
     PRICES
  ================================ */
    function prices_url (
        p_car_type_id in varchar2
    ) return varchar2;

  /* ===============================
     GALLERY
  ================================ */
    function gallery_url (
        p_car_type_id in varchar2
    ) return varchar2;

  /* ===============================
     VIEW (Optional future)
  ================================ */
    function view_url (
        p_car_type_id in varchar2
    ) return varchar2;

end car_catalog_router_pkg;

create or replace editionable package body dev_schema_v2.car_catalog_router_pkg as

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


-- sqlcl_snapshot {"hash":"ef5021e54b4bb8e81c60cc722aee43f853a21d35","type":"PACKAGE_SPEC","name":"CAR_CATALOG_ROUTER_PKG","schemaName":"DEV_SCHEMA_V2","sxml":""}