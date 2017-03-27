class DailiesController < ApplicationController
	def update
		# dailies count in competitions
		@daily = current_user.dailies.where(competition_id: params[:competition_id]).find_by(sunshine: params[:sunshine])
		unless @daily
			@daily = Daily.new(
				competition_id: params[:competition_id],
				user_id: current_user.id,
				sunshine: params[:sunshine]
			)
		end
		@daily.gamecount = params[:daily][:gamecount]
		if @daily.save!
			respond_to do |format|
				format.html {redirect_to(Competition.find_by(@daily.competition_id) )}
				format.json { render json: @daily}
			end
		else
			respond_to do |format|
				format.html { redirect_to( Competition.find_by(@daily.competition_id) )}
				format.json { render :nothing => true }
			end
		end
	end
end
