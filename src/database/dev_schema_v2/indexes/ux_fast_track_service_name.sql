create unique index wksp_elwagha50.ux_fast_track_service_name on
    wksp_elwagha50.fast_track_service_catalog (
        service_name
    );


-- sqlcl_snapshot {"hash":"4a574c1257662ec4f3e6ab968e7573aa736d13a0","type":"INDEX","name":"UX_FAST_TRACK_SERVICE_NAME","schemaName":"WKSP_ELWAGHA50","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <UNIQUE></UNIQUE>\n   <SCHEMA>WKSP_ELWAGHA50</SCHEMA>\n   <NAME>UX_FAST_TRACK_SERVICE_NAME</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_ELWAGHA50</SCHEMA>\n         <NAME>FAST_TRACK_SERVICE_CATALOG</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>SERVICE_NAME</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}