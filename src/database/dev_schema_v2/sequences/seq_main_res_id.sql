create sequence seq_main_res_id minvalue 1 maxvalue 9999999999999999999999999999 increment by 1 /* start with n */ cache 20 noorder nocycle
nokeep noscale global;


-- sqlcl_snapshot {"hash":"fdaa7b02ed25363ea7bebd3506d8b52328ced037","type":"SEQUENCE","name":"SEQ_MAIN_RES_ID","schemaName":"DEV_SCHEMA_V2","sxml":"\n  <SEQUENCE xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>DEV_SCHEMA_V2</SCHEMA>\n   <NAME>SEQ_MAIN_RES_ID</NAME>\n   \n   <INCREMENT>1</INCREMENT>\n   <MINVALUE>1</MINVALUE>\n   <MAXVALUE>9999999999999999999999999999</MAXVALUE>\n   <CACHE>20</CACHE>\n   <SCALE>NOSCALE</SCALE>\n</SEQUENCE>"}