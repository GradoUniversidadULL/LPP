require 'spec_helper'


describe Lpp67 do
    
  before :each do
    
    #Referencias bibliografía
    @b =  Bbl.new(['Dave Thomas', 'Andy Hunt', 'Chad Fowler'],'The Pragmatic Programmers Guide','The Facets of Ruby','Pragmatic Bookshelf','4 edition','July 7, 2013',['ISBN-13: 978-1937785499','ISBN-10: 1937785491'])
    @b2 = Bbl.new(['Scott Chacon'],'Pro Git 2009th Edition','(Pro)','Apress','2009 edition','August 27, 2009',['ISBN-13: 978-1430218333','ISBN-10: 1430218339'])
    @b3 = Bbl.new(['David Flanagan', 'Yukihiro Matsumoto'], 'The Ruby Programming Language', 'O’Reilly Media', '1 edition','February4, 2008',['ISBN-10: 0596516177', 'ISBN-13: 978-0596516178'])
    @b4 = Bbl.new(['David Chelimsky','Dave Astels', 'Bryan Helmkamp', 'Dan North', 'Zach Dennis', 'Aslak Hellesoy'],'The RSpecBook: Behaviour Driven Development with RSpec, Cucumber, and Friends','The Face,ts of Ruby','PragmaticBookshelf','1 edition''December 25, 2010',['ISBN-10: 1934356379', 'ISBN-13: 978-1934356371'])
    @b5 = Bbl.new(['Richard E. Silverman'],'Git Pocket Guide', 'O’Reilly Media','1 edition','August 2, 2013',['ISBN-10: 1449325866','ISBN-13: 978-1449325862'])
    
    #Herencia
    @b6 = Book.new(['Dave Thomas', 'Andy Hunt', 'Chad Fowler'],'The Pragmatic Programmers Guide','The Facets of Ruby','Pragmatic Bookshelf','4 edition','July 7, 2013',['ISBN-13: 978-1937785499','ISBN-10: 1937785491'],'12€','Online')
    @b7 = Periodico.new(['Eric'],'Pragmatic','July 7, 2013','El Pais','2€')
    @b8 = ArtPer.new(['Juan'],'Lectura','July 7, 2013','El Pais','2€','Moda')
    @b9 = DocEle.new(['Juan'],'Lectura','July 7, 2013','www.miarticulo.com')
    @b10 = ArtRev.new(['Pepito'],'Lectura','Jan 4, 2013','5€','Hola!','Coches')    
    
    
    
    
    
    #lista
    @list = Lista.new()
    
    #prueba insertar vacío
    @list2 = Lista.new()
    @list2.insert_empty(@b)
    
  
    #prueba tipo nodo  
    @node = Node.new(2,3)
    
    
    #prueba extraer
    @list3 = Lista.new()
    @list3.insert_empty(@b2)
    @list3.insert_end(@b3)
    @list3.extract_inicio()
    
    #prueba insertar varios elementos
    @list4 = Lista.new()
    @list4.insert_end(@b4)
    @list4.insert_end(@b5)
    
    #prueba extraer
    @list5 = Lista.new()
    @list5.insert_empty(@b)
    
    
    #prueba each
    @list6 = Lista.new()
    @list6.insert_empty("eric")
    @list6.insert_end("juan")
    @list6.insert_end("pedro")
    
    
    #pruebas lista doblemente enlazada
    @list7 = Lista.new()
    @list7.insert_empty("eric")
    @list7.insert_end("juan")
    
    #pruebas lista doblemente enlazada extraer final
    @list8 = Lista.new()
    @list8.insert_empty("eric")
    @list8.insert_end("juan")
    @list8.insert_end("pepe")
    @list8.insert_end("lucas")
    @list8.extract_final()
    
    #pruebas lista doblemente enlazada insertar inicio
    @list9 = Lista.new()
    @list9.insert_empty("eric")
    @list9.insert_end("juan")
    @list9.insert_end("pepe")
    @list9.insert_inicio("lolo")
    
    #Herencia con Lista
    @Hlista = Lista.new()
    @Hlista.insert_inicio(@b6)
    @Hlista.insert_end(@b7)
    @Hlista.insert_end(@b8)
    @Hlista.insert_end(@b9)
    @Hlista.insert_end(@b10)
    
  end
  describe 'Node' do
    
    it '#Debe existir un Nodo de la lista con sus datos y su siguiente'  do
      expect(@node.to_s).is_a? Struct
    
    end
  end
  
  
  describe 'List' do
   
  
   it '#Se extrae el primer elemento de la lista' do
      expect(@list3.to_s()).to eq "\n Autores: David Flanagan, Yukihiro Matsumoto\n Título: The Ruby Programming Language\n Editorial: O’Reilly Media\n Edición: 1 edition\n Fecha: February4, 2008\n Código: ISBN-10: 0596516177, ISBN-13: 978-0596516178"
       expect(@list3.empty()).respond_to?("hola",false)
   end

  
  
    it '#Se puede insertar un elemento' do
      expect(@list2.to_s()).to eq "\n Autores: Dave Thomas, Andy Hunt, Chad Fowler\n Título: The Pragmatic Programmers Guide\n Serie: The Facets of Ruby\n Editorial: Pragmatic Bookshelf\n Edición: 4 edition\n Fecha: July 7, 2013\n Código: ISBN-13: 978-1937785499, ISBN-10: 1937785491"
    end
  
  
  
    it '#Se pueden insertar varios elementos' do
      expect(@list4.to_s()).to eq "\n Autores: David Chelimsky, Dave Astels, Bryan Helmkamp, Dan North, Zach Dennis, Aslak Hellesoy\n Título: The RSpecBook: Behaviour Driven Development with RSpec, Cucumber, and Friends\n Editorial: The Face,ts of Ruby\n Edición: PragmaticBookshelf\n Fecha: 1 editionDecember 25, 2010\n Código: ISBN-10: 1934356379, ISBN-13: 978-1934356371 \n Autores: Richard E. Silverman\n Título: Git Pocket Guide\n Editorial: O’Reilly Media\n Edición: 1 edition\n Fecha: August 2, 2013\n Código: ISBN-10: 1449325866, ISBN-13: 978-1449325862"
    end
    
    it '#Debe existir una Lista con su cabeza' do
      expect{@list3.extract_inicio()}.to raise_error( RuntimeError,"No se puede extraer porque debe existir una lista con su cabeza")
    end
    

    it '#Each' do
      expect(@list6.each()).to eq "eric juan pedro "
    end
  
  
    it '#Debe ser una lista doblemente enlazada' do
        expect(@list7.print_before()).to eq "eric"
    end
    
    it '#Se debe poder extraer al final' do
        expect(@list8.to_s()).to eq "eric juan pepe"
    end
    
    it '#Se debe poder insertar al inicio' do
        expect(@list9.to_s()).to eq "lolo eric juan pepe"
    end
    
    it '#Se debe poder recorrer de atrás hacia delante' do
        expect(@list9.to_s_i()).to eq "pepe juan eric lolo"
    end
    
    it '#Lista con varios tipos' do
        expect(@Hlista.to_s()).to eq "\n Autores: Dave Thomas, Andy Hunt, Chad Fowler\n Título: The Pragmatic Programmers Guide\n Serie: The Facets of Ruby\n Editorial: Pragmatic Bookshelf\n Edición: 4 edition\n Fecha: July 7, 2013\n Código: ISBN-13: 978-1937785499, ISBN-10: 1937785491\n Precio: 12€\n Disponible: Online \n Autores: Eric\n Título: Pragmatic\n Fecha: July 7, 2013\n Periódico: El Pais\n Precio: 2€ \n Autores: Juan\n Título: Lectura\n Fecha: July 7, 2013\n Periódico: El Pais\n Precio: 2€\n Sección: Moda \n Autores: Juan\n Título: Lectura\n Fecha: July 7, 2013\n Enlace: www.miarticulo.com \n Autores: Pepito\n Título: Lectura\n Fecha: Jan 4, 2013\n Precio: 5€\n Revista: Hola!\n Sección: Coches"
    end
    
    
  end
  
  
  describe 'Herencia' do
    
    it '#Instancias de herencia' do
      expect(@b6).instance_of? Bbl
      expect(@b7).instance_of? Bbl
      
      expect(@b7).equal? @b6
      
      expect(@b8).instance_of? Periodico
      expect(@b9).instance_of? Periodico
      expect(@b10).instance_of? Periodico
      
    end
    
    it '#Libro con todo lo necesario de la clase bibliografía' do
      expect(@b6.to_s).to eq "\n Autores: Dave Thomas, Andy Hunt, Chad Fowler\n Título: The Pragmatic Programmers Guide\n Serie: The Facets of Ruby\n Editorial: Pragmatic Bookshelf\n Edición: 4 edition\n Fecha: July 7, 2013\n Código: ISBN-13: 978-1937785499, ISBN-10: 1937785491\n Precio: 12€\n Disponible: Online"
    end
     
     
    it '#Periódico con todo lo necesario heredado de la clase bibliografía' do
      expect(@b7.to_s).to eq "\n Autores: Eric\n Título: Pragmatic\n Fecha: July 7, 2013\n Periódico: El Pais\n Precio: 2€"
    end 
     
    it '#Articulo periodico con todo lo necesario heredado de la clase periodico' do
      expect(@b8.to_s).to eq "\n Autores: Juan\n Título: Lectura\n Fecha: July 7, 2013\n Periódico: El Pais\n Precio: 2€\n Sección: Moda"
    end 
   
    it '#Documento electrónico con todo lo necesario heredado de la clase periodico' do
     expect(@b9.to_s).to eq "\n Autores: Juan\n Título: Lectura\n Fecha: July 7, 2013\n Enlace: www.miarticulo.com"
    end 
    
    it '#Artículo de revista con todo lo necesario heredado de la clase periodico' do
     expect(@b10.to_s).to eq "\n Autores: Pepito\n Título: Lectura\n Fecha: Jan 4, 2013\n Precio: 5€\n Revista: Hola!\n Sección: Coches"
    end 

    
    
      
  end
  
  
end
