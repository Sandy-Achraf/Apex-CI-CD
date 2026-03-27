create index wksp_elwagha50.ix_limo_return_parent on
    wksp_elwagha50.sublevel_limo_res (
        parent_sub_res_id
    );


-- sqlcl_snapshot {"hash":"204fdb792b2bbaaa514ae1939922121617b7d978","type":"INDEX","name":"IX_LIMO_RETURN_PARENT","schemaName":"WKSP_ELWAGHA50","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>WKSP_ELWAGHA50</SCHEMA>\n   <NAME>IX_LIMO_RETURN_PARENT</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_ELWAGHA50</SCHEMA>\n         <NAME>SUBLEVEL_LIMO_RES</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>PARENT_SUB_RES_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}