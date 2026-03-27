create or replace force editionable view wksp_elwagha50.unified_creator_names (
    creator_id,
    creator_name,
    creator_type
) as
    select
        id           as creator_id,
        first_name
        || ' '
        || last_name as creator_name,
        'EMPLOYEE'   as creator_type
    from
        bs_employees
    union all

-- Drivers (company)
    select
        driver_id   as creator_id,
        driver_name as creator_name,
        'DRIVER'    as creator_type
    from
        company_drivers
    union all

-- Suppliers (only type 30)
    select
        to_char(supplier_id) as creator_id,
        supplier_name        as creator_name,
        'SUPPLIER'           as creator_type
    from
        suppliers
    where
        supplier_type_id = 30
    union all

-- System/unknown
    select
        'SYSTEM' as creator_id,
        'النظام' as creator_name,
        'SYSTEM' as creator_type
    from
        dual;


-- sqlcl_snapshot {"hash":"5e1571c0f95c332ce5294954f2314136c28d0697","type":"VIEW","name":"UNIFIED_CREATOR_NAMES","schemaName":"WKSP_ELWAGHA50","sxml":""}