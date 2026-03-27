create or replace package wksp_elwagha50.media_pkg as

  /* Upload file from APEX temp to OCI and return PAR URL */
    function upload_from_temp (
        p_bucket_folder in varchar2,  -- e.g. CAR_TYPES_MAIN
        p_temp_name     in varchar2,  -- apex temp file name
        p_object_name   in varchar2,  -- file name in bucket
        p_par_prefix    in varchar2,  -- prefix for par name
        p_exp_months    in number default 12
    ) return varchar2;

  /* Delete single object */
    procedure delete_object (
        p_object_path in varchar2
    );

  /* Delete full folder */
    procedure delete_folder (
        p_folder_path in varchar2
    );

end media_pkg;
/


-- sqlcl_snapshot {"hash":"a750e1b7b20fe11a7d8054d70ea4e07bd46953e9","type":"PACKAGE_SPEC","name":"MEDIA_PKG","schemaName":"WKSP_ELWAGHA50","sxml":""}