create or replace package wksp_elwagha50.utility_invoice_pdf as
    function build_invoice_pdf (
        p_invoice_id in invoices.invoice_id%type
    ) return blob;

end utility_invoice_pdf;
/


-- sqlcl_snapshot {"hash":"db4dae79a3c8dfcfeeaaaec2050c51aa53a66fb8","type":"PACKAGE_SPEC","name":"UTILITY_INVOICE_PDF","schemaName":"WKSP_ELWAGHA50","sxml":""}