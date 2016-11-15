include Enumerable
include Comparable

Node = Struct.new(:value, :next, :before)

class Lista
    attr_reader :cabeza
    attr_reader :final
    
    def initialize()
        @cabeza=nil
        @final=nil
    end
    
    
    def extract_inicio()
       if @cabeza == @final
          raise RuntimeError,"No se puede extraer porque debe existir una lista con su cabeza"
	    else
	     @cabeza = @cabeza[:next]
	     @cabeza[:before] = nil
	     
       end
        
    end
    
    def extract_final()
       @final = @final[:before]
       @final[:next] = nil
        
    end
    
    
    
    def empty()
       if @cabeza == nil
           true 
       else
           false
       end
    end    
    
    
    def insert_empty(nodo)
       node = Node.new(nodo) 
       @cabeza = node
       @final = node
       
    end
    
    def insert_end(nodo)
        if (empty())
            insert_empty(nodo)
        else
            @final[:next] = Node.new(nodo,nil,@final)
            @final = @final[:next]
        end
    end
    
    def insert_inicio(node)
        if(empty())
           insert_empty(node)
        else
           @cabeza[:before] = Node.new(node,@cabeza)
           @cabeza = @cabeza[:before]
        end
           
    end
    
    def to_s()
       x="" 
       i = @cabeza
       while i != nil
           if i[:next] != nil 
               x << i[:value].to_s << " "
           else
               x << i[:value].to_s
           end
           i = i[:next]
       end
       "#{x}"
    end
    
    def to_s_i()
       x="" 
       i = @final
       while i != nil
           if i[:before] != nil 
               x << i[:value].to_s << " "
           else
               x << i[:value].to_s
           end
           i = i[:before]
       end
       "#{x}"
    end
    
   
    def print_before()
       x="" 
       i = @final[:before]
               x << i[:value].to_s 
       "#{x}"
    end
  
    

    def each()
        x = ""
        nodo = @cabeza
        while nodo != nil
            x << nodo[:value] << " "  
            nodo = nodo[:next]
        end
        "#{x}"
    end
end