class PortfoliosInstrument < ActiveRecord::Base
  belongs_to :portfolio
  #ten błąd co mi podesłałeś w pracy powodowany był przez literówkę.
  belongs_to :instrument
end
