class Portfolio < ActiveRecord::Base
  attr_accessible :user_id
  #has_and_belongs_to_many :instruments
  belongs_to :user
  has_many :portfolios_instruments
  has_many :instruments, through: :portfolios_instruments 
 end
