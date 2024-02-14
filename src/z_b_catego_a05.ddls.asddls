@AbapCatalog.sqlViewName: 'ZV_CATEGO_A05'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Data definition - Categoría'
define view Z_B_CATEGO_A05 as select from ztb_catego_a05
{
    key bi_categ as Categoria,
    descripcion as Descripcion
}
