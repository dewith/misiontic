import math
import json
import requests
from pprint import pprint

json_compras = requests.get("https://raw.githubusercontent.com/arleserp/MinTIC2022/master/json/comprassmall.json")
compras = json.loads(json_compras.text)
#pprint(compras, indent=4)


def caja(compras):
    '''
    Recibe un archivo json deserializado con las compras de los 
    clientes y devuelvelas tirillas de compra 
    '''
    productos = []
    cantidades = []
    precios = []

    for compra in compras:
        
        cedula = compra['cliente']

        for producto in compra['productos']:

            productos.append(producto['nombre'])

            cantidades.append(producto['cantidad'])
            precios.append(producto['cantidad'] * math.ceil(float(producto['precio unitario'])))

        subtotal = sum(precios)
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

        # imprime cabecera
        print('Centro Comercial Unaleño' + 
              '\nCompra más y Gasta Menos' +
              '\nNIT: 899.999.063')
        print('Cliente:', cedula)
        print('Art Cant Precio')

        # imprime cuerpo de la factura
        for producto, cantidad, precio in zip(productos, cantidades, precios):
            print(producto, 'x' + str(cantidad), '$' + str(precio))
        print('Total: $' + str(total))
        print('En esta compra tu descuento fue $' + str(descuento))

        # imprime agradecimiento
        print('Gracias por tu compra')
        print('---')

        productos = []
        cantidades = []
        precios = []

   
caja(compras)