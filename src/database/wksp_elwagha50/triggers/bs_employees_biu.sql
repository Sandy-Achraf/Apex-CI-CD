create or replace editionable trigger wksp_elwagha50.bs_employees_biu before
    insert or update on wksp_elwagha50.bs_employees
    for each row
declare
    b integer := 0;
    e integer := 0;
    l integer := 0;
begin
    if inserting then
        :new.created := sysdate;
        :new.created_by := coalesce(
            sys_context('APEX$SESSION', 'APP_USER'),
            user
        );
    end if;

    :new.updated := sysdate;
    :new.updated_by := coalesce(
        sys_context('APEX$SESSION', 'APP_USER'),
        user
    );
    :new.email := lower(:new.email);
    :new.screen_name := lower(:new.screen_name);
    if
        :new.initials is null
        and :new.first_name is not null
        and :new.last_name is not null
    then
        :new.initials := nvl(substr(:new.first_name,
                                    1,
                                    1)
                             || substr(:new.last_name,
                                       1,
                                       1),
                             'X');
    end if;

    if :new.email is not null then
        b := instr(:new.email,
                   '.');
        e := instr(:new.email,
                   '@');
        :new.email_domain := substr(:new.email,
                                    e + 1);
        if
            e > 2
            and b > 1
            and :new.first_name is null
            and :new.last_name is null
        then
            l := ( e - b ) - 1;
            if
                b < e
                and l > 0
            then
                :new.first_name := initcap(substr(:new.email,
                                                  1,
                                                  b - 1));

                :new.last_name := initcap(substr(:new.email,
                                                 b + 1,
                                                 l));

            end if;

        end if;

    end if;

    if :new.initials is null then
        :new.initials := 'AA';
    end if;

    if :new.first_name is null then
        :new.first_name := 'Unknown';
    end if;

    if :new.last_name is null then
        :new.last_name := 'Unknown';
    end if;

    :new.tags := upper(:new.tags);
end;
/

alter trigger wksp_elwagha50.bs_employees_biu enable;


-- sqlcl_snapshot {"hash":"3cc8609b939f60cd85804c7f0742bb7775df5770","type":"TRIGGER","name":"BS_EMPLOYEES_BIU","schemaName":"WKSP_ELWAGHA50","sxml":""}