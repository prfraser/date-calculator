class WelcomeController < ApplicationController
	include WelcomeHelper
	def index
		startdate = params[:startdate]
		numdays = params[:numdays].to_i
		@result = day_counter(startdate, numdays)
		render :index
	end
end
