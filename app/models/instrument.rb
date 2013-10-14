class Instrument < ActiveRecord::Base
  attr_accessible :amount, :buydate, :name, :shortname, :value, :instrumentType, :capitalisation, :percent, :period

  DICT = {1 => "Waluta", 2 => "Lokata", 3 => "Akcja", 4 => "Fundusz inwestycyjny", 5 => "Obligacja", 6 => "Bon skarbowy"}

  has_many :portfolios_instruments
  has_many :portfolios, through: :portfolios_instruments
end



