create or replace package dev_schema_v2.utility_invoice_pdf as
    function build_invoice_pdf (
        p_invoice_id in invoices.invoice_id%type
    ) return blob;

end utility_invoice_pdf;
/


-- sqlcl_snapshot {"hash":"e205a1ee59823b1f28e4833f9063540d98285562","type":"PACKAGE_SPEC","name":"UTILITY_INVOICE_PDF","schemaName":"DEV_SCHEMA_V2","sxml":""}