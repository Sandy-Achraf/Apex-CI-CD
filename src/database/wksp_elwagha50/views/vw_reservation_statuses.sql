create or replace force editionable view wksp_elwagha50.vw_reservation_statuses (
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
        reservation_statuses
    where
        is_active = 'Y';


-- sqlcl_snapshot {"hash":"e0e4e178308cb6603d1117731862a9b6f6364a8d","type":"VIEW","name":"VW_RESERVATION_STATUSES","schemaName":"WKSP_ELWAGHA50","sxml":""}