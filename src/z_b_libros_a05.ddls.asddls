@AbapCatalog.sqlViewName: 'ZV_LIBROS_A05'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Data definition - Libros'
@Metadata.allowExtensions: true
@UI.headerInfo: {
    typeName: 'Libro',
    typeNamePlural: 'Libros',
    title: {
        type: #STANDARD,
        value: 'Titulo'
    },
    description: {
        type: #STANDARD,
        value: 'Titulo'
    },
    imageUrl: 'Imagen'
}
@Search.searchable: true
define view Z_B_LIBROS_A05
  as select from    ztb_libros_a05   as libros
    inner join      ztb_catego_a05   as catego on libros.bi_categ = catego.bi_categ
    left outer join Z_B_CLNT_LIB_A05 as ventas on libros.id_libro = ventas.idLibro
  association [0..*] to Z_B_CLIENTES_A05 as _Clientes on $projection.IdLibro = _Clientes.IdLibro
{
  key libros.id_libro    as IdLibro,
      libros.bi_categ    as Categoria,
      libros.titulo      as Titulo,
      libros.autor       as Autor,
      libros.editorial   as Editorial,
      libros.idioma      as Idioma,
      libros.paginas     as Paginas,
      @Semantics.amount.currencyCode: 'moneda'
      libros.precio      as Precio,
      case
      when ventas.Ventas < 1 then 0
      when ventas.Ventas = 1 then 1
      when ventas.Ventas = 2 then 2
      when ventas.Ventas > 2 then 3
      else 0
      end                as Ventas,
      case ventas.Ventas
      when 0 then ''
      else ''
      end                as Text,
      @Semantics.currencyCode
      libros.moneda      as Moneda,
      libros.formato     as Formato,
      libros.url         as Imagen,
      catego.descripcion as Descripcion,
      _Clientes
}
