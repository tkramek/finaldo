class Instrument < ActiveRecord::Base
  attr_accessible :name, :friendly_name, :description, :units, 
  				  :buy_date, :interest_rate, :capitalisation, 
  				  :begin_value, :end_value, :evaluation_date, :type

  DICT = {"Currency" => "Waluta", 2 => "Lokata", 3 => "Akcja", 4 => "Fundusz inwestycyjny", 5 => "Obligacja", 6 => "Bon skarbowy"}

  has_many :portfolios_instruments
  has_many :portfolios, through: :portfolios_instruments
end


class Share < Instrument #akcje
end

class Gilt < Instrument #obligacje państwowe
end

class Fund < Instrument #fundusze inwestycyjn
end

class Currency < Instrument #walut
end

class Deposit < Instrument #lokata
end

