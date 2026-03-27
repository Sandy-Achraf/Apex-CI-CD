create or replace package wksp_elwagha50.whatsapp_pkg as

  /* Send OTP messages */
    function send_signup_otp (
        p_to  in varchar2,
        p_otp in varchar2
    ) return clob;

    function send_resetpass_otp (
        p_to  in varchar2,
        p_otp in varchar2
    ) return clob;

  /* Generate OTP (USER based) */
    procedure generate_otp (
        p_user_id  in varchar2,
        p_purpose  in varchar2,
        p_otp_id   out varchar2,
        p_otp_code out varchar2
    );

end whatsapp_pkg;
/


-- sqlcl_snapshot {"hash":"5e1646d204a229f804147dcbe9f4422f470bee32","type":"PACKAGE_SPEC","name":"WHATSAPP_PKG","schemaName":"WKSP_ELWAGHA50","sxml":""}