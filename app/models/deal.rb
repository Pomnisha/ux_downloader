class Deal < ActiveRecord::Base
  attr_accessible :amount, :date, :id, :instrument_id, :per, :price, :time
end
