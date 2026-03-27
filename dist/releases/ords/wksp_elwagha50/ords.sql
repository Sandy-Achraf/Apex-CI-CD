-- liquibase formatted sql
-- changeset WKSP_ELWAGHA50:1774650288360 stripComments:false  logicalFilePath:ords/wksp_elwagha50/ords.sql
-- sqlcl_snapshot {"hash":"3913e5ee531f073e2bc1515a7320bac0ac860f82","type":"ORDS_SCHEMA","name":"ords","schemaName":"WKSP_ELWAGHA50","sxml":""}
--
        
DECLARE
  l_roles     OWA.VC_ARR;
  l_modules   OWA.VC_ARR;
  l_patterns  OWA.VC_ARR;

BEGIN
  ORDS_ADMIN.ENABLE_SCHEMA(
      p_enabled             => TRUE,
      p_url_mapping_type    => 'BASE_PATH',
      p_url_mapping_pattern => 'wksp_elwagha50',
      p_auto_rest_auth      => FALSE);

  ORDS_ADMIN.CREATE_ROLE(
      p_schema         => 'WKSP_ELWAGHA50',
      p_role_name=> 'oracle.dbtools.role.autorest.WKSP_ELWAGHA50');
  ORDS_ADMIN.CREATE_ROLE(
      p_schema         => 'WKSP_ELWAGHA50',
      p_role_name=> 'oracle.dbtools.role.autorest.any.WKSP_ELWAGHA50');
  l_roles(1) := 'oracle.dbtools.auth.roles.builtin.VecDB';

  ORDS_ADMIN.DEFINE_PRIVILEGE(
      p_schema         => 'WKSP_ELWAGHA50',
      p_privilege_name => 'oracle.dbtools.auth.privileges.builtin.VecDB',
      p_roles          => l_roles,
      p_patterns       => l_patterns,
      p_modules        => l_modules,
      p_label          => NULL,
      p_description    => NULL,
      p_comments       => NULL); 

  l_roles.DELETE;
  l_modules.DELETE;
  l_patterns.DELETE;

  l_roles(1) := 'oracle.dbtools.autorest.any.schema';
  l_roles(2) := 'oracle.dbtools.role.autorest.WKSP_ELWAGHA50';
  l_patterns(1) := '/metadata-catalog/*';

  ORDS_ADMIN.DEFINE_PRIVILEGE(
      p_schema         => 'WKSP_ELWAGHA50',
      p_privilege_name => 'oracle.dbtools.autorest.privilege.WKSP_ELWAGHA50',
      p_roles          => l_roles,
      p_patterns       => l_patterns,
      p_modules        => l_modules,
      p_label          => 'WKSP_ELWAGHA50 metadata-catalog access',
      p_description    => 'Provides access to the metadata catalog of the objects in the WKSP_ELWAGHA50 schema.',
      p_comments       => NULL); 

  l_roles.DELETE;
  l_modules.DELETE;
  l_patterns.DELETE;

  l_roles(1) := 'SODA Developer';
  l_patterns(1) := '/soda/*';

  ORDS_ADMIN.DEFINE_PRIVILEGE(
      p_schema         => 'WKSP_ELWAGHA50',
      p_privilege_name => 'oracle.soda.privilege.developer',
      p_roles          => l_roles,
      p_patterns       => l_patterns,
      p_modules        => l_modules,
      p_label          => NULL,
      p_description    => NULL,
      p_comments       => NULL); 

  l_roles.DELETE;
  l_modules.DELETE;
  l_patterns.DELETE;


COMMIT;

END;
/


