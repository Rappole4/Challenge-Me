class CompChallengesController < ApplicationController
  before_action :set_comp_challenge, only: [:show, :edit, :update, :destroy]

  # GET /comp_challenges
  # GET /comp_challenges.json
  def index
    @comp_challenges = CompChallenge.all
  end

  # GET /comp_challenges/1
  # GET /comp_challenges/1.json
  def show
  end

  # GET /comp_challenges/new
  def new
    @comp_challenge = CompChallenge.new
  end

  # GET /comp_challenges/1/edit
  def edit
  end

  # POST /comp_challenges
  # POST /comp_challenges.json
  def create
    @comp_challenge = CompChallenge.new(comp_challenge_params)

    respond_to do |format|
      if @comp_challenge.save
        format.html { redirect_to @comp_challenge, notice: 'Comp challenge was successfully created.' }
        format.json { render :show, status: :created, location: @comp_challenge }
      else
        format.html { render :new }
        format.json { render json: @comp_challenge.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comp_challenges/1
  # PATCH/PUT /comp_challenges/1.json
  def update
    respond_to do |format|
      if @comp_challenge.update(comp_challenge_params)
        format.html { redirect_to @comp_challenge, notice: 'Comp challenge was successfully updated.' }
        format.json { render :show, status: :ok, location: @comp_challenge }
      else
        format.html { render :edit }
        format.json { render json: @comp_challenge.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comp_challenges/1
  # DELETE /comp_challenges/1.json
  def destroy
    @comp_challenge.destroy
    respond_to do |format|
      format.html { redirect_to comp_challenges_url, notice: 'Comp challenge was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comp_challenge
      @comp_challenge = CompChallenge.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comp_challenge_params
      params.fetch(:comp_challenge, {})
    end
end
