create sequence client_code_seq minvalue 1 maxvalue 9999999999999999999999999999 increment by 1 /* start with n */ cache 20 noorder nocycle
nokeep noscale global;


-- sqlcl_snapshot {"hash":"a5b69ec2c8325504f6118d59a8dd0fb360b12ca6","type":"SEQUENCE","name":"CLIENT_CODE_SEQ","schemaName":"DEV_SCHEMA_V2","sxml":"\n  <SEQUENCE xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>DEV_SCHEMA_V2</SCHEMA>\n   <NAME>CLIENT_CODE_SEQ</NAME>\n   \n   <INCREMENT>1</INCREMENT>\n   <MINVALUE>1</MINVALUE>\n   <MAXVALUE>9999999999999999999999999999</MAXVALUE>\n   <CACHE>20</CACHE>\n   <SCALE>NOSCALE</SCALE>\n</SEQUENCE>"}