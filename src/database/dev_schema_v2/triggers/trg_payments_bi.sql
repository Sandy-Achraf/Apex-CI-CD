create or replace editionable trigger wksp_elwagha50.trg_payments_bi before
    insert on wksp_elwagha50.payments
    for each row
begin
    if :new.payment_id is null then
        :new.payment_id := 'PAY-'
                           || to_char(payments_seq.nextval, 'FM000000');
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

alter trigger wksp_elwagha50.trg_payments_bi enable;


-- sqlcl_snapshot {"hash":"98a6bc0e36a601ed4e0139fefe2c4ec033ed83dc","type":"TRIGGER","name":"TRG_PAYMENTS_BI","schemaName":"WKSP_ELWAGHA50","sxml":""}