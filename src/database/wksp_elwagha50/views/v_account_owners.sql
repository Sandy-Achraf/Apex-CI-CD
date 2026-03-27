create or replace force editionable view wksp_elwagha50.v_account_owners (
    owner_type,
    owner_id,
    owner_name
) as
    select
        'Employee'   as owner_type,
        id           as owner_id,
        first_name
        || ' '
        || last_name as owner_name
    from
        bs_employees
    union all
    select
        'Supplier',
        supplier_id,
        supplier_name
    from
        suppliers
    union all
    select
        'Driver',
        driver_id,
        driver_name
    from
        company_drivers
    union all
    select
        'Company',
        'COMPANY',
        'الشركة' as owner_name
    from
        dual;


-- sqlcl_snapshot {"hash":"a7a3b65836bacf7d3f64538b36d24cb97bb0e8c0","type":"VIEW","name":"V_ACCOUNT_OWNERS","schemaName":"WKSP_ELWAGHA50","sxml":""}