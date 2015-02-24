class Tally < ActiveRecord::Base
  	belongs_to :status
  	has_one :category
end
