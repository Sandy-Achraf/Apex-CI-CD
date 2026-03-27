create or replace force editionable view wksp_elwagha50.vw_fast_track_res_statuses (
    status_code,
    status_label_ar,
    status_label_en,
    status_badge_class,
    status_order
) as
    select
        status_code,
        status_label_ar,
        status_label_en,
        status_badge_class,
        status_order
    from
        fast_track_res_statuses
    where
        is_active = 'Y';


-- sqlcl_snapshot {"hash":"27af3e1450a0a6c6009d5e3d34d991cc6ed97db2","type":"VIEW","name":"VW_FAST_TRACK_RES_STATUSES","schemaName":"WKSP_ELWAGHA50","sxml":""}