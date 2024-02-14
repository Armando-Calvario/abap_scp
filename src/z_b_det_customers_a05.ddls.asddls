@AbapCatalog.sqlViewName: 'ZV_DET_CUST_A05'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Details Customers'
@Metadata.allowExtensions: true
define view Z_B_DET_CUSTOMERS_A05
  as select from zrent_cusmrs_a05
{

  key doc_id    as ID_Documento,
  key matricula as Matricula,
      nombres   as Nombre,
      apellidos as Apellidos,
      email     as Correo,
      cntr_type as Tipo_Contrato
}
