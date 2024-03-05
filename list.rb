require "./item.rb"
class List #se inicia la clase Lista
    attr_writer :items #se da un writer de atriburos
    def initialize() #se plantea el inicializador
        @items = Array.new() #como es una lista la guardamos en un arreglo
    end
    def add_item(text) #se define el metodo para agregar items
        item = Item.new (text) #nueva instancia del metodo item
        @items << item #se agrega el item a la lista
    end

    def remove_item (index) #metodo para remover un articulo de la lista
        @items.delete_at(index) 
        puts "Articulo removido" #Se indica que se va a remover de un indice
    end

    def checked_item (index) #metodo para marcar articulos ya seleccionados
        @items[index].checked = true #en el indice se cambia su estado a checked
    end
    
    def remove_all #borrar todos los articulos
        @items.clear 
    end

    def to_s
        @text
    end

    def show_all
        if @items.length == 0
            puts "No tienes articulos en tu lista"
        else
            @items.each_index do |index|
                puts "#{index} - #{@items[index]}"
            end
        end
    end
end