class Instrument < ActiveRecord::Base
  attr_accessible :amount, :buydate, :name, :shortname, :value, :instrumentType
end
