create index wksp_elwagha50.ix_limo_return_type on
    wksp_elwagha50.sublevel_limo_res (
        return_type,
        return_status
    );


-- sqlcl_snapshot {"hash":"0c3df37020494f088300b9e6c8db48f5b8cf60e6","type":"INDEX","name":"IX_LIMO_RETURN_TYPE","schemaName":"WKSP_ELWAGHA50","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>WKSP_ELWAGHA50</SCHEMA>\n   <NAME>IX_LIMO_RETURN_TYPE</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_ELWAGHA50</SCHEMA>\n         <NAME>SUBLEVEL_LIMO_RES</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>RETURN_TYPE</NAME>\n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>RETURN_STATUS</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}