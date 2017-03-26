class DailiesController < ApplicationController
	def create
		# to do: check that current_competition.id and see how to make it work
		@daily = Daily.new
		@daily.user_id = current_user.id
		@daily.count = params[:count]
		@daily.day = params[:day]
		@daily.competition_id = current_competition.id
	end
end
