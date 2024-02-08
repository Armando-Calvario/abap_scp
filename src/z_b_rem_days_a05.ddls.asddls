@AbapCatalog.sqlViewName: 'ZV_REM_DAYS_A05'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Remaining days'
define view Z_B_REM_DAYS_A05
  as select from zrent_cars_a05
{
  key matricula as Matricula,
      marca     as Marca,
      case
      when alq_hasta <> ''
      then dats_days_between( cast( $session.system_date as abap.dats), alq_hasta)
      end       as Dias


}
