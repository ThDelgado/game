class GamePlaysController < ApplicationController
  before_action :set_game_play, only: %i[ show edit update destroy ]

  # GET /game_plays or /game_plays.json
  def index
    @game_plays = GamePlay.all
  end

  # GET /game_plays/1 or /game_plays/1.json
  def show
  end

  # GET /game_plays/new
  def new
    @game_play = GamePlay.new
  end

  # GET /game_plays/1/edit
  def edit
  end

  # POST /game_plays or /game_plays.json
  def create
    @game_play = GamePlay.new(game_play_params)

    respond_to do |format|
      if @game_play.save
        format.html { redirect_to game_play_url(@game_play), notice: "Game play was successfully created." }
        format.json { render :show, status: :created, location: @game_play }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @game_play.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /game_plays/1 or /game_plays/1.json
  def update
    respond_to do |format|
      if @game_play.update(game_play_params)
        format.html { redirect_to game_play_url(@game_play), notice: "Game play was successfully updated." }
        format.json { render :show, status: :ok, location: @game_play }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @game_play.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /game_plays/1 or /game_plays/1.json
  def destroy
    @game_play.destroy

    respond_to do |format|
      format.html { redirect_to game_plays_url, notice: "Game play was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_play
      @game_play = GamePlay.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def game_play_params
      params.require(:game_play).permit(:name, :date, :description, :image)
    end
end
