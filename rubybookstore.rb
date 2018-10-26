def buscar(cp, buscado, tipo)
    a = cp[:tope]
    while a != nil
        if a[tipo] == buscado
            break
        else
            a = a[:siguiente]
        end
    end
    return a
end

def registrolibros(cola)
    
end

begin
    puts "Bienvenido al programa de la libreria"
    puts "En este programa podra manejar de mejor manera los libros"
    puts "Seleccione la opcion deseada"
    puts "1. Administracion de libros"
    puts "2. Control de ventas"
    puts "3. Salir"
    opcion=gets.chomp

end while opcion == '3'