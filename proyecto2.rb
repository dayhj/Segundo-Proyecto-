def limpiar
    system('clear')
end
def registro_de_nuevos_libros(colautores,piladelibros)
    #Esta funcion es para ingresar diferente ejemplares en la libreria, son ordenados por autor y cada libro 
    #por lo menos tiene los siguientes datos: ISBN, nombre,autor y precio.
    #Se debe tomar en cuenta el numero de existencia basados en el ISBN, no en el nombre del autor o del libro
    #En caso de que se ingrese un nuevo autor, se debe iniciar una pila nueva
    #Los libros se almacenana en diferentes pilas referido a nombre de libro , pero misma pila referido al nombre del autor
    #jaja
    limpiar
    #tamañopila
    puts 'Bienvenido a la libreria.'
    puts "En esta opcion usted podra ingresar un libro , con ciertos datos especificos"
    puts "Ingrese el ISBN del libro"
    the_isbn = gets.chomp  
    puts "Ingrese el nombre del libro"
    nombre_libro = gets.chomp
    puts "Ingrese el nombre del autor"
    nombre_autor=gets.chomp
    puts "Ingrese el precio del libro"
    puts "En esta opcion no necesita ingresar la Q. solo debe ingresar el valor numerico"
    precio_libro=gets.chomp
    puts "Ingrese el total de libros que esta ingresando"
    existencias_libro=gets.chop.to_i
    datos_libro = {
        isbn: the_isbn,
        nombre_del_libro: nombre_libro,
        nombre_del_autor: nombre_autor, 
        precio_del_libro: precio_libro, 
        existencias_del_libro: existencias_libro,
     #   siguiente:nil
    }
    libros={
        libro: datos_libro,
        siguienteL:nil
    }
   
    if piladelibros[:vaciaL]==true
         piladelibros[:topeL] = libros
         piladelibros[:vaciaL] = false  
         piladelibros[:topeL]
         autores={
            autor: piladelibros[:topeL],
            siguienteA:nil
        }
         colautores[:topeC]=autores 
         colautores[:finalC]=autores
        # piladelibros[:tamañoL]= piladelibros[:tamañoL]+1
        # colautores[:tamañoC]=colautores[:tamañoC]+1
        pos=piladelibros[:topeL].size-1
    else
        if  piladelibros[:topeL][:libro][:isbn]==datos_libro[:isbn]
            piladelibros[:topeL][:libro][:existencias_del_libro]= piladelibros[:topeL][:libro][:existencias_del_libro]+datos_libro[:existencias_del_libro]
            piladelibros[:topeL][:libro][:existencias_del_libro]
        elsif piladelibros[:topeL][:libro][:isbn]!=datos_libro[:isbn] 
          # for i in 0..pos.to_i
           # if  piladelibros[:topeL][:tamañoL]==0 && pos==1
           tope = piladelibros[:topeL]
           libros[:siguienteL] = tope
            #paso 1
           piladelibros[:topeL] = libros
           piladelibros[:tamañoL]= piladelibros[:tamañoL]+1
                 #paso 1
               # piladelibros[:topeL] = libros
                puts "holaaaaa"
                pos=pos.to_i+1
            #posicion_actual= piladelibros[:siguienteL][:tamañoL]
            #posicion_siguiente= piladelibros[:siguienteL][:tamañoL]+1
            puts piladelibros[:topeL]
        else
            puts "ver ver ver"
            for i in 0..pos
                if piladelibros[:siguienteL][:libro][:isbn]==datos_libro[:isbn] 
              puts  piladelibros[:siguienteL][:libro][:existencias_del_libro]= piladelibros[:siguienteL][:libro][:existencias_del_libro]+datos_libro[:existencias_del_libro]
              puts  piladelibros[:siguienteL][:libro][:existencias_del_libro]
                end
            #pos.to_i>1 && posicion_actual[:libro][:isbn]!=datos_libro[:isbn]
               # tope = piladelibros[:topeL]
               # libros[:siguienteL] = tope
                 #paso 1
               # piladelibros[:topeL] = libros
              #  piladelibros[:tamañoL]= piladelibros[:tamañoL]+1
           # elsif posicion_actual[:libro][:isbn]==datos_libro[:isbn]
             #     piladelibros[:siguienteL][:libro][:existencias_del_libro]= piladelibros[:siguienteL][:libro][:existencias_del_libro]+datos_libro[:existencias_del_libro]
             #     piladelibros[:siguienteL][:libro][:existencias_del_libro]
             puts piladelibros[:topeL]
        end
           # end
        end
    end
    # puts piladelibros[:topeL][:libro][:nombre_del_autor]

end
def Registros_de_autores()
    #El sistema debe utilizar una cola con un maximo de 5 autores, para cada autor se almecenara la pila de libros 
    #no se puede almacenar dos veces a un mismo autor
end
def listado_de_libros()
    #Esta opcion debe mostrar todos los libros en un sistema independiente del autor
    #No se debe repetir ISBN, se de incrementar en un contador y mostrar el total de datos
    #Se debe mostrar el listado de libros con los siguientes datos: ISBN , nombre, precio , autor y existencias
    #en lugar de repetir el libro mostrar las existencias, debe mantenr el orden en las diferentes pilas de libros
    #en caso de que no existan libros en el sistema debe aparecer una alertas
end
def listado_de_autores()
    #Debe mostrar la capacidad de libros que tiene dicho autor
    #El orden de la cola de autores debe ser respetada
    #En caso de no existir autores en el sistema debe aparecer una alerta informando
end
def buscar_libro()
   #Se ingresara el ISBN y este debe mostrar cuantas existencias tiene este libro
   #Debe mostrar los siguientes datos: ISBN, nombre ,autor , precio y existencias
   #Si el usuario ingresa un ISBN invalido debe informarle al vendedor
end
def buscar_autor()
    #se buscara por medio del autor, y debe mostrar el nombre de todos los libros que estan en la pila 
    #con su total de existencia 
end
def registrar_venta()
    #Los empleados generaran ventas, pero solo almacenaremos las ultimas 20 ventas dentro de una cola
    #En una venta los clientes pueden adquirir uno o mas libros, el sistema solo debe permitir un venta 
    #por una y almacenarlos en la cola de venta. 
    #Si el cliente adquiere mas de un ejemplar en una sola venta : 3libros diferentes 10% de descuento sobre el total
    #4 libros diferentes 20% de descuento sobre el total de venta , si los libros comprados son al menos de 3 autores 
    #diferentes tiene un descuento adicional del 5% 
    #debe generar un codigo unico por venta, la cola donde se almacenan las ventas es de detamaño limitado
    #El total de descuentos se calculan al finalizar la venta
    #Debe mostrar el detalle de la venta en todo momento
    #Colocar un codigo a la venta 
    #nombre del cliente , nit Y  NUMERO DE FACTURA
    # en la cola de 20 se ingresara una cola auxiliar , que va a contener los datos de la venta , para que la venta pueda
    # cumplir de forma correcta con el descuento , se debera comparar el nit , el numero de factura ... si son iguales 
    # se trabajarar sobre la misma cola ,hasta que la condicon ya no se cumpla . el numero de factura  debe de ser 
    # ingresado por el colaborador .
end
def buscar_venta()
    #se debe ver el detalle en especifico , debe mostrar codigo, la cola de libros vendidos, subtotal, descuentos
    #y total de la venta, solo se almecenan solo 20 ventas, si la venta ya fue eliminada o no existente el mensaje
    #debe mostrar un mensaje con esta alerta, debe respetar el orden de la pila
end
def listado_de_ventas()
    #debe mostar el codigo , cantidad de libros comprados, subtotal, descuentos y total por cada una de las ventas.
    #imprimir la colota
end

colautores={
    topeC:nil,
    finalC:nil,
    maxC:5,
    vaciaC:true,
    llenaC:false,
    tamañoC:0
}
piladelibros={
    topeL:nil,
    maxL:-1,
    vaciaL: true,
    llenaL: false,
    tamañoL:0
}
begin
#menu principal , y bienvenida
puts "Bienvenido al programa de la libreria"
puts "En este programa podra manejar de mejor manera los libros"
puts "Seleccione la opcion deseada"
puts "1. Administracion de libros"
puts "2. Control de ventas"
puts "3. Salir"
opcion=gets.chomp
if opcion=='1'
    #Administracion de libros
    #menu para la primera opcion 
    puts "Seleccione alguna opcion del menu"
    puts "1. Registro de nuevo libro"
    puts "2. Registro de autores"
    puts "3. Listado de libros"
    puts "4. Listado de autores"
    puts "5. Buscar por libro"
    puts "6. Buscar por autor"
    puts "7. Regresar"
    opcion=gets.chomp
    if opcion=='1'
        #registro de nuevo libro
        registro_de_nuevos_libros(colautores,piladelibros)
    elsif opcion=='2'
        # registro de autores
    elsif opcion=='3'
        #listado de libros
    elsif opcion=='4'
        #listado de autores
    elsif opcion=='5'
        #buscar por nombre del libro
    elsif opcion == '6'
        #buscar por nombre del autor 
    elsif opcion =='7'
        #regresar
    end
elsif opcion=='2'
    #Contro de ventas
    #menu para la segunda opcion 
    puts "1. Registrar venta"
    puts "2. Buscar una venta"
    puts "3. Listado de ventas"
    puts "4. Regresar"
    opcion=gets.chomp
    if opcion=='1'
        #registro de nuevo libro
    elsif opcion=='2'
        # registro de autores
    elsif opcion=='3'
        #listado de libros
    elsif opcion=='4'
    end
#elsif opcion=='3'
 #   puts "Gracias por utilizar el programa"
end 
end while opcion!='3'
