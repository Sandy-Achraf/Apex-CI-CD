create or replace editionable trigger wksp_elwagha50.trg_sync_ops_orders after
    insert or update of fulfillment_status, assigned_to_name, amount_egp, service_start_ts on wksp_elwagha50.order_items
    for each row
begin
    ops_sync_pkg.sync_item(:new.order_item_id);
end;
/

alter trigger wksp_elwagha50.trg_sync_ops_orders enable;


-- sqlcl_snapshot {"hash":"69df25a636cc3fb2e50a5f7b247aaab3add99dd6","type":"TRIGGER","name":"TRG_SYNC_OPS_ORDERS","schemaName":"WKSP_ELWAGHA50","sxml":""}