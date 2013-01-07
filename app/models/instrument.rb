class Instrument < ActiveRecord::Base
  attr_accessible :code, :id, :last_downloaded_day
end
