class Item #Definimos clase item
    attr_writer :text, :checked #Damos el poder para escribir 

    def initialize(text = "") #inicializamos 
        @text = text
        @checked = false
    end

    def to_s #Definimos el metodo y su contenido
        if @checked
            puts "[X] #{@text}"
        else
            puts "[ ] #{@text}"
        end
    end

end