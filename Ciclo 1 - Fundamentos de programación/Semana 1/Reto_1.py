producto = input('Ingrese el nombre del producto: ')
costo_unitario = int(input('Ingrese el costo unitario: '))
precio_venta = int(input('Ingrese el precio de venta al público: '))
unidades_disponibles = int(input('Ingrese las unidades disponibles: '))
ganancia = (precio_venta * unidades_disponibles) - (costo_unitario * unidades_disponibles)


# Imprimimos todo
print('Producto:', producto)
print('CU: ${}'.format(costo_unitario))
print('PVP: ${}'.format(precio_venta))
print('Unidades Disponibles: {}'.format(unidades_disponibles))
print('Ganancia: ${}'.format(ganancia))
