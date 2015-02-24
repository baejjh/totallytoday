class Category < ActiveRecord::Base
  	belongs_to :tally
  	belongs_to :status
end
