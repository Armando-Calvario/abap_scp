@AbapCatalog.sqlViewName: 'ZV_ACC_CAT_A05'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Data definition - Acc Categoría'
define view Z_B_ACC_CAT as select from ztb_acc_cat_a05
{
   key bi_categ as Bi_Categoria,
   key tipo_acceso as Tipo_Acceso
}
