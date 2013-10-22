class Instrument < ActiveRecord::Base
  attr_accessible :name, :friendly_name, :description, :units, 
  				  :buy_date, :interest_rate, :capitalisation, 
  				  :begin_value, :end_value, :evaluation_date, :type,
  				  :instrument_currency_id

  DICT = {"Currency" => "Waluta" , "Deposit" => "Lokata", "Share" => "Akcja", "Fund" => "Fundusz inwestycyjny", "Gilt" => "Obligacja", "Bond" => "Bon skarbowy"}

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
	CapitalizationType = {365 => "Dzienna" , 12 => "Miesieczna", 4 => "Kwartalna", 1 => "Roczna"}
end

class Bond < Instrument #lokata
end
