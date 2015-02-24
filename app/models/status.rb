class Status < ActiveRecord::Base
	self.inheritance_column = nil
	
	has_many :tallys 
	has_many :categorys, through: :tallys
end
