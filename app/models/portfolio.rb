class Portfolio < ActiveRecord::Base
  attr_accessible :user_id
  has_and_belongs_to_many :instruments
  belongs_to :user
 end
