class Instrument < ActiveRecord::Base
  acts_as_predecessor
  attr_accessible :amount, :buydate, :name, :shortname, :value, :instrumentType, :capitalisation, :percent, :period
  
  def aaa
    InstrumentType.ToS(instrumentType)
  end
  
  
  belongs_to :user
end


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
