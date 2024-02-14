@AbapCatalog.sqlViewName: 'ZV_CLIENTES_A05'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Data definition - Clientes'
@Metadata.allowExtensions: true
@UI.headerInfo: {
    typeName: 'Cliente',
    imageUrl: 'Imagen',
    title: {
        type: #STANDARD,
        value: 'NombreCompleto'
    },
    description: {
        type: #STANDARD,
        value: 'idCliente'
    }
}

define view Z_B_CLIENTES_A05
  as select from ztb_clientes_a05 as clientes
    inner join   ztb_clnt_lib_a05 as clnts on clnts.id_cliente = clientes.id_cliente
{
  key clientes.id_cliente                     as IdCliente,
  key clientes.tipo_acceso                    as Acceso,
  key clnts.id_libro                          as IdLibro,
      clientes.nombre                         as Nombre,
      clientes.apellidos                      as Apellidos,
      clientes.email                          as Email,
      clientes.url                            as Imagen,
      concat_with_space(clientes.nombre, clientes.apellidos, 1) as NombreCompleto
}
