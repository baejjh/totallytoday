class Status < ActiveRecord::Base
	has_many :tallys 
	has_many :categorys, through: :tallys
end
