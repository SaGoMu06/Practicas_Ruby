#Se llaman las clases necesarias
require "./list.rb"
require "./item.rb"

#requerimientos del menú de interfaz
#agregar articulos
#remover articulo
#ver todos los articulos
#marcar un articulo determinado
#borrar todo
#salir de la app

class ListApp
    attr_writer :list #nombrar los attr writers

    def initialize
        @list = List.new #se inicializa la clase
    end
    def run 
        puts "iniciando lista de compras" #metodo de inicio de app
        loop do #ciclo para desplegar el menú
            puts "a - agregar articulo"
            puts "r - remover articulo"
            puts "v - ver todos articulos"
            puts "m - marcar articulo"
            puts "b - borrar todo"
            puts "s - salir"
            input = gets.chomp #obtener opcion deseada

            case input #menú
            when "a"
                puts "Ingresa el nombre del articulo: "
                item = gets.chomp
                @list.add_item(item) #llamar la clase add para agregar articulos
            when "r"
                puts "Numero del articulo que deseas remover: "
                index = gets.chomp
                @list.remove_item(index.to_i)  #llama la clase remove e indica en numero de indice para seleccionar 
                
            when "v"
                @list.show_all #llamar clase show, muestra todos los articulos
            when "m"
                puts "Numero del articulo que deseas marcar: "
                index = gets.chomp
                @list.checked_item(index.to_i) #llamar clase checked para marcar articulos
            when "b"
                puts "Deseas remover todos los articulos? s/n"
                input = gets.chomp
                if input == "s"
                @list.remove_all #condicional para confirmar segurodad en borrar todo
                else
                puts "operación cancelada"
                end
            when "s"
                break #termina el programa
            else
                puts "Opción invalida."
            end    
        end
        puts "Compras terminadas"
    end
    
end
