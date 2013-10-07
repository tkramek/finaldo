class Instrument < ActiveRecord::Base
  attr_accessible :amount, :buydate, :name, :shortname, :value, :instrumentType, :capitalisation, :percent, :period
  
  def aaa
    InstrumentType.ToS(instrumentType)
  end
  has_many :portfolios_instruments
  has_many :portfolios, through: :portfolios_instruments 
end


#STI
class InstrumentType
      @@dict = {1 => "Waluta", 2 => "Lokata", 3 => "Akcja", 4 => "Fundusz inwestycyjny", 5 => "Obligacja", 6 => "Bon skarbowy"}
  def self.ToS(type)
    #dict = {1 => "Waluta", 2 => "Lokata", 3 => "Akcja", 4 => "Fundusz inwestycyjny", 5 => "Obligacja", 6 => "Bon skarbowy"}
    @@dict[type]  
  end
  
  def self.GetDict
    @@dict
  end
  
end
