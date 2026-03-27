create or replace package wksp_elwagha50.blitz_util as

--- Get Reservation ID

---- for USERS

    function get_user_email (
        p_app_user in varchar2 default null,
        p_user_id  in varchar2 default null
    ) return varchar2;

    function get_user_id (
        p_app_user    in varchar2 default null,
        p_screen_name in varchar2 default null
    ) return varchar2;

---- COMMENTS PROCEDURES


----- Find Mentions

    function find_mentions (
        p_clob in clob
    ) return varchar2;

--- COMMENT STUFF & NOTIFY
end blitz_util;
/


-- sqlcl_snapshot {"hash":"485e6a3f50c7fbc16df548fdf564701cbd0fe44b","type":"PACKAGE_SPEC","name":"BLITZ_UTIL","schemaName":"WKSP_ELWAGHA50","sxml":""}