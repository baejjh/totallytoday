class MainsController < ApplicationController
	def index
		@completed_tallies = Tally.all.where("status_id = '1'") #WRONG CONDITION - NEED TO BE "COMPLETE" .where status_id = 3
		@category = Category.all
	end

	def about
		@blogger = User.find(1)
	end

	def journey
		@category = Category.all
	end

	def destination
		@completed_tallies = Tally.all.where("status_id = '1'") #WRONG CONDITION - NEED TO BE "COMPLETE" .where status_id = 3
	end
end
