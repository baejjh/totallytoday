class ApplicationController < ActionController::Base
  	# Prevent CSRF attacks by raising an exception.
  	# For APIs, you may want to use :null_session instead.
 	include SessionsHelper
 	layout :determine_layout

 	private
 	def determine_layout
	  	if current_user.nil?
	  		"visitor"
	  	else
	    	"blogger"
	  	end
	end
end