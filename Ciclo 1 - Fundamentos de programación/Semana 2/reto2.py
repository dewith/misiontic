import math

def generar_factura(cant_articulos):
    '''
    Crea un función para listar todos los productos a facturar.

    Parametros
    ----------
      cant_articulos: int
            La cantidad de articulo en el carrito de compra.

    Regresa
    -------
      Imprime por pantalla la factura.
    '''
    # enlista la compra realizada
    lista_nombres = []
    lista_precios = []

    for i in range(cant_articulos):
        nombre = str(input('Nombre del articulo: '))
        precio = float(input('Precio final: '))

        lista_nombres.append(nombre)
        lista_precios.append(int(math.ceil(precio)))
    
    subtotal = sum(lista_precios)
    total = None

    # calcula descuento
    if subtotal > 700000:
      total = subtotal * (1 - 0.2)
    elif subtotal > 300000 and subtotal <= 700000: 
      total = subtotal * (1 - 0.15)
    elif subtotal > 150000 and subtotal <= 300000: 
      total = subtotal * (1 - 0.10)
    else:
      total = subtotal
    
    total = int(math.ceil(total))
    descuento = subtotal- total

    # imprime factura
    print('Centro Comercial Unaleño' + 
          '\nCompra más y Gasta Menos' +
          '\nNIT: 899.999.063')
    
    # imprime cuerpo de la factura
    for nombre, precio in zip(lista_nombres, lista_precios):
        print(nombre + ' $' + str(precio))
    print('Total: $' + str(total))
    print('En esta compra tu descuento fue $' + str(descuento))

    # imprime agradecimiento
    print('Gracias por tu compra')

cant_articulos = int(input('Inserte la cantidad de productos: '))
generar_factura(cant_articulos)