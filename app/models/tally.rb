class Tally < ActiveRecord::Base
  	belongs_to :status
  	belongs_to :user
  	has_one :category
end
