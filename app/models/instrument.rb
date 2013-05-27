class Instrument < ActiveRecord::Base
  attr_accessible :amount, :buydate, :name, :shortname, :value, :instrumentType
  
  belongs_to :user
end
