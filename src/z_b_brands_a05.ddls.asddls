@AbapCatalog.sqlViewName: 'ZV_BRANDS_A05'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Brands'
define view Z_B_BRANDS_A05
  as select from zrent_brands_a05
{
  key marca as Marca,
  @UI.hidden: true
      url   as Imagen
}
