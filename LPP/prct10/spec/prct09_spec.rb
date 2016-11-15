# encoding: UTF-8
require 'spec_helper'
module Prct09
end

describe Prct09 do
    
  before :each do
    
    #Referencias bibliografía
    @b =  Bbl.new(['Dave Thomas', 'Andy Hunt', 'Chad Fowler'],'The Pragmatic Programmers Guide','The Facets of Ruby','Pragmatic Bookshelf','4 edition','July 7, 2013',['ISBN-13: 978-1937785499','ISBN-10: 1937785491'])
    @b1 = Bbl.new(['Dave Thomas', 'Andy Hunt', 'Chad Fowler'],'The Pragmatic Programmers Guide','The Facets of Ruby','Pragmatic Bookshelf','4 edition','July 7, 2013',['ISBN-13: 978-1937785499','ISBN-10: 1937785491'])
    @b2 = Bbl.new(['Scott Chacon'],'Pro Git 2009th Edition','(Pro)','Apress','2009 edition','August 27, 2009',['ISBN-13: 978-1430218333','ISBN-10: 1430218339'])
    @b3 = Bbl.new(['David Flanagan', 'Yukihiro Matsumoto'], 'The Ruby Programming Language', 'O’Reilly Media', '1 edition','February4, 2008',['ISBN-10: 0596516177', 'ISBN-13: 978-0596516178'])
    @b4 = Bbl.new(['David Chelimsky','Dave Astels', 'Bryan Helmkamp', 'Dan North', 'Zach Dennis', 'Aslak Hellesoy'],'The RSpecBook: Behaviour Driven Development with RSpec, Cucumber, and Friends','The Face,ts of Ruby','PragmaticBookshelf','1 edition''December 25, 2010',['ISBN-10: 1934356379', 'ISBN-13: 978-1934356371'])
    @b5 = Bbl.new(['Richard E. Silverman'],'Git Pocket Guide', 'O’Reilly Media','1 edition','August 2, 2013',['ISBN-10: 1449325866','ISBN-13: 978-1449325862'])
    @bn = Bbl.new(false,nil,nil,nil,nil,nil,nil)
    

    #Listas
    @l = Lista.new()
    @l.insert_empty(@b2)
    @l.insert_end(@b3)
    @l.insert_end(@b4)
  
    @l2 = Lista.new()
    
    @l3 = Lista.new()
    @l3.insert_empty(2)
  
    @l4 = Lista.new()
    @l4.insert_empty(0)
    
    @l5 = Lista.new()
    @l5.insert_empty(2)
    @l5.insert_end(6)
    
    @l6 = Lista.new()
    @l6.insert_empty(4)
    @l6.insert_end(2)
    @l6.insert_end(5)
    @l6.insert_end(1)
    @l6.insert_end(8)
    
  end
    it 'Enumerable y comparable' do
      expect(@b5 < @b2).to eq(true)
      expect(@b <= @b1).to eq(true)
      expect(@b == @b1).to eq(true)
      expect(@b3 == @b4).to eq(false)
      expect(@l.any?).to eq(true)
      expect(@l2.any?).to eq(false)
      expect(@l3.map{|i| i*i}).to eq([4])
      expect(@l.count).to eq(3)
      expect(@l4.detect {|i| i == 0}).to eq(0)
      expect(@l5.drop(1)).to eq([6])
      expect(@l6.max).to eq(8)
      expect(@l6.min).to eq(1)
      expect(@l6.sort).to eq([1,2,4,5,8])
    end
end