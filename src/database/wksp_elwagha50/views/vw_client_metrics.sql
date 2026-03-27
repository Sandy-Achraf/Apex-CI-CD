create or replace force editionable view wksp_elwagha50.vw_client_metrics (
    client_id,
    total_reservations,
    lifetime_value,
    last_activity
) as
    select
        c.client_id,
        count(r.main_res_id) as total_reservations,
        sum(r.total_amount)  as lifetime_value,
        max(e.event_date)    as last_activity
    from
        clients           c
        left join main_reservations r on r.customer_id = c.client_id
        left join client_events     e on e.client_id = c.client_id
    group by
        c.client_id;


-- sqlcl_snapshot {"hash":"6b9036932ae6df26e71bbc76fd79abd42de23f31","type":"VIEW","name":"VW_CLIENT_METRICS","schemaName":"WKSP_ELWAGHA50","sxml":""}