create or replace editionable trigger wksp_elwagha50.trg_init_trip_v2 before
    insert on wksp_elwagha50.limo_trips_tracker_v2
    for each row
declare
    v_price    number(12, 2);
    v_currency varchar2(10);
    v_exchange number(12, 6);
    v_acc_id   varchar2(30);
begin

  /* =====================================================
     1) Get base pricing from product
     ===================================================== */

    select
        r.trip_price,
        r.currency,
        nvl(r.exchange_rate, 1)
    into
        v_price,
        v_currency,
        v_exchange
    from
        sublevel_limo_res r
    where
            r.sub_res_id = :new.product_id
        and nvl(r.is_deleted, 'N') = 'N';

  /* =====================================================
     2) Generate Accounting ID
     ===================================================== */
    v_acc_id := 'ACC-' || to_char(systimestamp, 'YYYYMMDDHH24MISSFF3');

  /* =====================================================
     3) Create accounting row
     ===================================================== */

    insert into limo_trip_accounting (
        accounting_id,
        trip_id,
        sub_res_id,
        trip_price,
        currency,
        exchange_rate,
        base_price_egp,
        created,
        created_by
    ) values ( v_acc_id,
               :new.trip_id,
               :new.product_id,
               v_price,
               v_currency,
               v_exchange,
               round(v_price * v_exchange, 2),
               systimestamp,
               nvl(:new.created_by,
                   user) );

exception
    when no_data_found then
        raise_application_error(-20011,
                                'Cannot init accounting: SUB_RES_ID not found = ' || :new.product_id);
end;
/

alter trigger wksp_elwagha50.trg_init_trip_v2 enable;


-- sqlcl_snapshot {"hash":"3715a1832e845615f15cdda03d16c6e8a2f44134","type":"TRIGGER","name":"TRG_INIT_TRIP_V2","schemaName":"WKSP_ELWAGHA50","sxml":""}