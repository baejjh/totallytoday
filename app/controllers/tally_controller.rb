class TallyController < ApplicationController
  	def new
  		@tally = Tally.new
        @display_all_tallies = Tally.all
        @display_all_categories = Category.all #not used yet but want category names to be retrieved
  	end

    def create
        @tally = Tally.new( tally_params )
        if @tally.save
            flash[:enter_success] = 'New bucket list item has been created. Get that tally on.'
        else
            flash[:enter_error] = 'Oh, no! Item was not added. Try again!'
        end
        redirect_to new_tally_path
    end

    def show
        @one_tally = Tally.find( one_tally_params )
    end

  	def edit
  	end

  	def destroy
  	end

    private
        def tally_params
            params.require(:tally).permit(:title, :description, :city, :status_id)
        end
        
        def one_tally_params
            params.require(:id)
        end
end
