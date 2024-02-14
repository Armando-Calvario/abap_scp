@AbapCatalog.sqlViewName: 'ZV_CLNT_LIB_A05'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Data definition - Cliente Libros'
define view Z_B_CLNT_LIB_A05 as select from ztb_clnt_lib_a05
{
    key id_libro as idLibro,
        count(distinct id_cliente) as Ventas
}
group by
  id_libro
