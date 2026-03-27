create or replace force editionable view wksp_elwagha50.vw_limo_res_statuses (
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
        limo_res_statuses
    where
        is_active = 'Y';


-- sqlcl_snapshot {"hash":"568d885e463b4de40597d9823f829d5821b254f9","type":"VIEW","name":"VW_LIMO_RES_STATUSES","schemaName":"WKSP_ELWAGHA50","sxml":""}