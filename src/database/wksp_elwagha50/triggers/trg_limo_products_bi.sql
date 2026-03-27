create or replace editionable trigger wksp_elwagha50.trg_limo_products_bi before
    insert on wksp_elwagha50.limo_products
    for each row
begin
    if :new.product_id is null then
        :new.product_id := 'PL-' || limo_product_seq.nextval;
    end if;

    :new.created := systimestamp;
    :new.created_by := nvl(
        apex_util.get_session_state('APP_USER_ID'),
        user
    );
    :new.updated := :new.created;
    :new.updated_by := :new.created_by;
end;
/

alter trigger wksp_elwagha50.trg_limo_products_bi enable;


-- sqlcl_snapshot {"hash":"ed9153318ec496215b3a0b999aaa279c1d760e96","type":"TRIGGER","name":"TRG_LIMO_PRODUCTS_BI","schemaName":"WKSP_ELWAGHA50","sxml":""}