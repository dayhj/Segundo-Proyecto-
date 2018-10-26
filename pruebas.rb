elemento1 = {
    valor: 2,
    siguiente: nil
}

diccionario = {
    valor: 1,
    siguiente: elemento1
}

a = diccionario
a[:siguiente][:valor] = 1

puts diccionario[:siguiente][:valor]

