create or replace package wksp_elwagha50.order_router_util as
    function details_url (
        p_ref_table in varchar2,
        p_ref_id    in varchar2
    ) return varchar2;

    function assign_url (
        p_ref_table in varchar2,
        p_ref_id    in varchar2
    ) return varchar2;

end order_router_util;
/


-- sqlcl_snapshot {"hash":"01dc4df9ebf668559cc6e713ac6de44d6a89663e","type":"PACKAGE_SPEC","name":"ORDER_ROUTER_UTIL","schemaName":"WKSP_ELWAGHA50","sxml":""}