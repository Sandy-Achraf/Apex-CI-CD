create or replace package wksp_elwagha50.drive_folder_pkg is
    procedure set_bucket (
        p_bucket in varchar2
    );

    function get_bucket return varchar2;

    function create_folder (
        p_parent_id   in varchar2, -- add Null to be on root
        p_folder_name in varchar2,
        p_created_by  in varchar2
    ) return varchar2;

end drive_folder_pkg;
/


-- sqlcl_snapshot {"hash":"25906e427b19cd4c590689de3161abb78dd242ed","type":"PACKAGE_SPEC","name":"DRIVE_FOLDER_PKG","schemaName":"WKSP_ELWAGHA50","sxml":""}