class StatusController < ApplicationController
  	def create
  		@status = Status.new( status_params )
  		if @status.save
  			flash[:enter_success] = 'New status type created!'
  		else
  			flash[:enter_error] = 'Try again'
  		end
		redirect_to '/users/' + routing_params[:id]
  	end

  	private
    def routing_params
        params.require(:user).permit(:id)
    end

    private
    def status_params
        params.require(:status).permit(:type)
    end
end
