create or replace package wksp_elwagha50.security_pkg as

  ----------------------------------------------------------
  -- Hashing (RAW version - same as old system)
  ----------------------------------------------------------
    function get_hashing (
        p_text in varchar2
    ) return raw;

  ----------------------------------------------------------
  -- Hash password (HEX string helper)
  ----------------------------------------------------------
    function hash_password (
        p_password in varchar2
    ) return varchar2;

  ----------------------------------------------------------
  -- Authentication
  ----------------------------------------------------------
    function user_is_authenticated (
        p_username in varchar2,
        p_password in varchar2
    ) return boolean;

  ----------------------------------------------------------
  -- Authorization helpers
  ----------------------------------------------------------
    function is_superadmin return boolean;

    function in_group (
        p_group_code in varchar2
    ) return boolean;

    function role_in_group (
        p_group_code in varchar2
    ) return varchar2;

end security_pkg;
/


-- sqlcl_snapshot {"hash":"f2c0068b5570b52dc997418b99cf82c685e5dc68","type":"PACKAGE_SPEC","name":"SECURITY_PKG","schemaName":"WKSP_ELWAGHA50","sxml":""}