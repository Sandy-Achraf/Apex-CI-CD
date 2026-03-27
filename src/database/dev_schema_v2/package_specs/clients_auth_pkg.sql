create or replace package wksp_elwagha50.clients_auth_pkg as
    function hash_password (
        p_password varchar2
    ) return varchar2;

    function normalize_phone (
        p_country_code in varchar2,
        p_phone_number in varchar2
    ) return varchar2;

    procedure register_user_by_phone (
        p_full_name    in varchar2,
        p_country_code in varchar2,
        p_phone_number in varchar2,
        p_password     in varchar2,
        p_source       in varchar2,
        p_user_id      out varchar2,
        p_client_id    out varchar2,
        p_otp_id       out varchar2
    );

    function verify_otp (
        p_user_id  in varchar2,
        p_otp_code in varchar2,
        p_purpose  in varchar2
    ) return boolean;

    function login_with_token (
        p_country_code in varchar2,
        p_phone_number in varchar2,
        p_password     in varchar2
    ) return varchar2;

    procedure forgot_password (
        p_country_code in varchar2,
        p_phone_number in varchar2,
        p_user_id      out varchar2,
        p_otp_id       out varchar2
    );

    procedure resend_otp (
        p_user_id in varchar2,
        p_purpose in varchar2,
        p_otp_id  out varchar2
    );

    procedure reset_password (
        p_user_id      in varchar2,
        p_otp_code     in varchar2,
        p_new_password in varchar2
    );


    /* ===============================
     JWT + Refresh
     =============================== */
    function generate_access_jwt (
        p_user_id   in varchar2,
        p_client_id in varchar2,
        p_username  in varchar2,
        p_user_type in varchar2 default 'PHONE',
        p_minutes   in number default 60
    ) return varchar2;

    function generate_refresh_jwt (
        p_user_id   in varchar2,
        p_client_id in varchar2,
        p_username  in varchar2,
        p_user_type in varchar2 default 'PHONE',
        p_days      in number default 30
    ) return varchar2;

    procedure issue_tokens_for_user (
        p_user_id       in varchar2,
        p_access_token  out varchar2,
        p_access_exp    out timestamp with time zone,
        p_refresh_token out varchar2,
        p_refresh_exp   out timestamp with time zone
    );

    function refresh_access_token (
        p_refresh_token in varchar2,
        p_access_token  out varchar2,
        p_access_exp    out timestamp with time zone
    ) return boolean;


  /* ===============================
     Manual Client Creation (APEX)
     =============================== */
    procedure create_client_manual (
        p_full_name    in varchar2,
        p_phone        in varchar2,   -- E.164 or digits
        p_country_name in varchar2,   -- Egypt, Saudi Arabia
        p_created_by   in varchar2 default 'APEX_MANUAL',
        p_client_id    out varchar2
    );

end clients_auth_pkg;
/


-- sqlcl_snapshot {"hash":"bc9dfb9f2d7c8d754f951f5e98230ada7546d870","type":"PACKAGE_SPEC","name":"CLIENTS_AUTH_PKG","schemaName":"WKSP_ELWAGHA50","sxml":""}