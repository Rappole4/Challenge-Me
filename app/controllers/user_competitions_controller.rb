class UserCompetitionsController < ApplicationController
  before_action :set_user_competition, only: [:show, :edit, :update, :destroy]

  # GET /user_competitions
  # GET /user_competitions.json
  def index
    @user_competitions = UserCompetition.all
  end

  # GET /user_competitions/1
  # GET /user_competitions/1.json
  def show
  end

  # GET /user_competitions/new
  def new
    @user_competition = UserCompetition.new
  end

  # GET /user_competitions/1/edit
  def edit
  end

  # POST /user_competitions
  # POST /user_competitions.json
  def create
    @user_competition = UserCompetition.new(user_competition_params)

    respond_to do |format|
      if @user_competition.save
        format.html { redirect_to @user_competition, notice: 'User competition was successfully created.' }
        format.json { render :show, status: :created, location: @user_competition }
      else
        format.html { render :new }
        format.json { render json: @user_competition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_competitions/1
  # PATCH/PUT /user_competitions/1.json
  def update
    respond_to do |format|
      if @user_competition.update(user_competition_params)
        format.html { redirect_to @user_competition, notice: 'User competition was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_competition }
      else
        format.html { render :edit }
        format.json { render json: @user_competition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_competitions/1
  # DELETE /user_competitions/1.json
  def destroy
    @user_competition.destroy
    respond_to do |format|
      format.html { redirect_to user_competitions_url, notice: 'User competition was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_competition
      @user_competition = UserCompetition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_competition_params
      params.require(:user_competition).permit(:user_id, :competition_id, :status)
    end
end
