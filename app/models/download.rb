class Download < ActiveRecord::Base
  attr_accessible :date, :file, :id, :instrument_id, :request
end
