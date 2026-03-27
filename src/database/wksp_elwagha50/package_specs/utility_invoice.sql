create or replace package wksp_elwagha50.utility_invoice as
    function get_invoice_id (
        p_main_res_id in varchar2
    ) return varchar2;

    procedure create_invoice (
        p_main_res_id in varchar2,
        p_created_by  in varchar2
    );

    procedure refresh_invoice (
        p_main_res_id in varchar2
    );

    procedure apply_promo (
        p_main_res_id   in varchar2,
        p_discount_type in varchar2, -- PERCENT / FIXED
        p_value         in number,
        p_created_by    in varchar2
    );

    procedure remove_promos (
        p_main_res_id in varchar2
    );

    procedure issue_invoice (
        p_main_res_id in varchar2
    );

end utility_invoice;
/


-- sqlcl_snapshot {"hash":"2ab6c3d32e65fc77bcb0c7361288a1e546ce87de","type":"PACKAGE_SPEC","name":"UTILITY_INVOICE","schemaName":"WKSP_ELWAGHA50","sxml":""}