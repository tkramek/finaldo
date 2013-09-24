class Bond < ActiveRecord::Base
  acts_as_heir_of :instrument
end
