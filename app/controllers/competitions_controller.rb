class CompetitionsController < ApplicationController
  before_action :set_competition, only: [:show, :edit, :update, :destroy]
  before_action :owned_competition, only: [:edit, :destroy, :update]

  # GET /competitions
  # GET /competitions.json
  def index
    @competitions = current_user.competitions
  end

  # GET /competitions/1
  # GET /competitions/1.json
  def show
  end

  # GET /competitions/new
  def new
    @competition = Competition.new
    @challenges = Challenge.all

  end

  # GET /competitions/1/edit
  def edit
    @challenges = Challenge.all
    @competition.user_id = current_user.id

  end

  # POST /competitions
  # POST /competitions.json
  def create
    @competition = Competition.new(competition_params)
    @challenges = Challenge.all
    @competition.user_id = current_user.id

    respond_to do |format|
      if @competition.save
        UserCompetition.create(user_id: current_user.id, competition_id: @competition.id, status: :fighter)
         # loop over each of the participants whose usernames were submitted
        params[:participants].each do |username|
             participant = User.find_by(username: username)
             if participant
                  UserCompetition.create( user_id: participant.id, competition_id: @competition.id, status: :fighter) 
             end
        end if params[:participants]
        format.html { redirect_to @competition, notice: 'Competition was successfully created.' }
        format.json { render :show, status: :created, location: @competition }
      else
        format.html { render :new }
        format.json { render json: @competition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /competitions/1
  # PATCH/PUT /competitions/1.json
  def update
    respond_to do |format|
      if @competition.update(competition_params)
         # loop over each of the participants whose usernames were submitted
        params[:participants].each do |username|
             participant = User.find_by(username: username)
             if participant
                  UserCompetition.create( user_id: participant.id, competition_id: @competition.id, status: :fighter) 
             end
        end if params[:participants]
        format.html { redirect_to @competition, notice: 'Competition was successfully updated.' }
        format.json { render :show, status: :ok, location: @competition }
      else
        format.html { render :edit }
        format.json { render json: @competition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /competitions/1
  # DELETE /competitions/1.json
  def destroy
    @competition.destroy
    respond_to do |format|
      format.html { redirect_to competitions_url, notice: 'Competition was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_competition
      @competition = Competition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def competition_params
      params.required(:competition).permit(:challenge_id, :game, :name, :goal, :competitor, :participants, :gamecount, :sunshine)
    end
    # this plus before action at top, stops alternative users from editing rules of comp
    def owned_competition
      unless current_user == @competition.user
        flash[:alert] = "Sorry, you didn't create this challenge, so you can't edit/destroy it"
        redirect_to(:back)
      end
    end
end
