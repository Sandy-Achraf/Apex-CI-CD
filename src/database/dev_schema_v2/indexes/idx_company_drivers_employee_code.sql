create index wksp_elwagha50.idx_company_drivers_employee_code on
    wksp_elwagha50.company_drivers (
        employee_code
    );


-- sqlcl_snapshot {"hash":"45f3ebd82da68d3a7844f265e35037f30c9e0045","type":"INDEX","name":"IDX_COMPANY_DRIVERS_EMPLOYEE_CODE","schemaName":"WKSP_ELWAGHA50","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>WKSP_ELWAGHA50</SCHEMA>\n   <NAME>IDX_COMPANY_DRIVERS_EMPLOYEE_CODE</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_ELWAGHA50</SCHEMA>\n         <NAME>COMPANY_DRIVERS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>EMPLOYEE_CODE</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}