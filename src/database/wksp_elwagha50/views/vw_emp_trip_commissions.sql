create or replace force editionable view wksp_elwagha50.vw_emp_trip_commissions (
    employee_id,
    employee_name,
    trip_id,
    product_id,
    assignment_id,
    start_datetime,
    office_net_egp,
    commission_egp
) as
    select
        p.created_by                as employee_id,
        coalesce(e.screen_name, e.first_name
                                || ' '
                                || e.last_name, e.username) as employee_name,
        v.trip_id,
        v.product_id,
        v.assignment_id,
        v.start_datetime,
        nvl(v.office_net_egp, 0)    as office_net_egp,
        round(greatest(
            nvl(v.office_net_egp, 0),
            0
        ) * 0.005,
              2)                    as commission_egp
    from
             vw_limo_trip_accounting v
        join limo_products p on p.product_id = v.product_id
        left join bs_employees  e on e.id = p.created_by
    where
            extract(month from v.start_datetime) = 9
        and extract(year from v.start_datetime) = extract(year from sysdate);


-- sqlcl_snapshot {"hash":"de7809d49fc9177e28af931094412aaee3c0fdc9","type":"VIEW","name":"VW_EMP_TRIP_COMMISSIONS","schemaName":"WKSP_ELWAGHA50","sxml":""}