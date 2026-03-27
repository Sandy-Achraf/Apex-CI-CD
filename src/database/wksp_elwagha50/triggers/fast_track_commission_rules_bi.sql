create or replace editionable trigger wksp_elwagha50.fast_track_commission_rules_bi before
    insert on wksp_elwagha50.fast_track_commission_rules
    for each row
begin
    if :new.rule_id is null then
        :new.rule_id := 'FTCR-'
                        || lpad(seq_fast_track_commission_rules.nextval, 6, '0');
    end if;

    if :new.created is null then
        :new.created := current_timestamp;
    end if;

end;
/

alter trigger wksp_elwagha50.fast_track_commission_rules_bi enable;


-- sqlcl_snapshot {"hash":"574a135ff03c1d87122e5d14f6aa978564443a2a","type":"TRIGGER","name":"FAST_TRACK_COMMISSION_RULES_BI","schemaName":"WKSP_ELWAGHA50","sxml":""}