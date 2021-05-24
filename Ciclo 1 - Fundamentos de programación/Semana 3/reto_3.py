import math


def caja():
    '''
    Registra las compras y genera las tirillas.
    '''
    productos = []
    cantidades = []
    precios = []

    while True:  
        texto_input = input('Inserte comando: ')
        comando = texto_input.split('&')

        # Comando 1
        if (texto_input[0] == '1') and (len(comando) == 4):
            productos.append(comando[1])
            cantidades.append(int(comando[2]))
            precios.append(int(comando[2]) * math.ceil(float(comando[3])))
            continue

        # Comando 2
        elif (texto_input[0] == '2') and (len(comando) == 2):
            cedula = comando[1]
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
            continue

        # Comando 3
        elif (texto_input[0] == '3') and (len(comando) == 1):
            break

        # Ningun de los anteriores
        else:
            print('ERROR 404: Comando no válido.')
            continue
                   
caja()