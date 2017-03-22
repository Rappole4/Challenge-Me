class CompchallengesController < ApplicationController
  before_action :set_compchallenge, only: [:show, :edit, :update, :destroy]

  # GET /compchallenges
  # GET /compchallenges.json
  def index
    @compchallenges = Compchallenge.all
  end

  # GET /compchallenges/1
  # GET /compchallenges/1.json
  def show
  end

  # GET /compchallenges/new
  def new
    @compchallenge = Compchallenge.new
    @competitions = Competition.all
    @challenges = Challenge.all
  end

  # GET /compchallenges/1/edit
  def edit
    @compchallenge = Compchallenge.new
    @competitions = Competition.all
    @challenges = Challenge.all
  end

  # POST /compchallenges
  # POST /compchallenges.json
  def create
    @compchallenge = Compchallenge.new(compchallenge_params)

    respond_to do |format|
      if @compchallenge.save
        format.html { redirect_to @compchallenge, notice: 'Compchallenge was successfully created.' }
        format.json { render :show, status: :created, location: @compchallenge }
      else
        format.html { render :new }
        format.json { render json: @compchallenge.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /compchallenges/1
  # PATCH/PUT /compchallenges/1.json
  def update
    respond_to do |format|
      if @compchallenge.update(compchallenge_params)
        format.html { redirect_to @compchallenge, notice: 'Compchallenge was successfully updated.' }
        format.json { render :show, status: :ok, location: @compchallenge }
      else
        format.html { render :edit }
        format.json { render json: @compchallenge.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /compchallenges/1
  # DELETE /compchallenges/1.json
  def destroy
    @compchallenge.destroy
    respond_to do |format|
      format.html { redirect_to compchallenges_url, notice: 'Compchallenge was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_compchallenge
      @compchallenge = Compchallenge.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def compchallenge_params
      params.fetch(:compchallenge, {})
    end
end
