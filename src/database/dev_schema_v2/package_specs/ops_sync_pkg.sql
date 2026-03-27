create or replace package wksp_elwagha50.ops_sync_pkg as

  /* Sync one order item */
    procedure sync_item (
        p_order_item_id in varchar2
    );

  /* Sync all items of one main order */
    procedure sync_main (
        p_main_res_id in varchar2
    );

  /* Full rebuild */
    procedure sync_all;

  /* Process retry queue (used by job) */
    procedure process_queue;

end ops_sync_pkg;
/


-- sqlcl_snapshot {"hash":"fc8c0fdf66ae57956d8e6be608c9f65e2f66ada6","type":"PACKAGE_SPEC","name":"OPS_SYNC_PKG","schemaName":"WKSP_ELWAGHA50","sxml":""}