create sequence seq_limo_trips_tracker minvalue 1 maxvalue 9999999999999999999999999999 increment by 1 /* start with n */ cache 20 noorder
nocycle nokeep noscale global;


-- sqlcl_snapshot {"hash":"780493ea97818d03f88c51a5fcc0ce3d1baf1c04","type":"SEQUENCE","name":"SEQ_LIMO_TRIPS_TRACKER","schemaName":"DEV_SCHEMA_V2","sxml":"\n  <SEQUENCE xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>DEV_SCHEMA_V2</SCHEMA>\n   <NAME>SEQ_LIMO_TRIPS_TRACKER</NAME>\n   \n   <INCREMENT>1</INCREMENT>\n   <MINVALUE>1</MINVALUE>\n   <MAXVALUE>9999999999999999999999999999</MAXVALUE>\n   <CACHE>20</CACHE>\n   <SCALE>NOSCALE</SCALE>\n</SEQUENCE>"}