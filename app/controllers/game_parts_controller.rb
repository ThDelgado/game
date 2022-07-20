class GamePartsController < ApplicationController
  before_action :set_game_part, only: %i[ show edit update destroy ]

  # GET /game_parts or /game_parts.json
  def index
    @game_parts = GamePart.all
  end

  # GET /game_parts/1 or /game_parts/1.json
  def show
  end

  # GET /game_parts/new
  def new
    @game_part = GamePart.new
  end

  # GET /game_parts/1/edit
  def edit
  end

  # POST /game_parts or /game_parts.json
  def create
    @game_part = GamePart.new(game_part_params)

    respond_to do |format|
      if @game_part.save
        format.html { redirect_to game_part_url(@game_part), notice: "Game part was successfully created." }
        format.json { render :show, status: :created, location: @game_part }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @game_part.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /game_parts/1 or /game_parts/1.json
  def update
    respond_to do |format|
      if @game_part.update(game_part_params)
        format.html { redirect_to game_part_url(@game_part), notice: "Game part was successfully updated." }
        format.json { render :show, status: :ok, location: @game_part }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @game_part.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /game_parts/1 or /game_parts/1.json
  def destroy
    @game_part.destroy

    respond_to do |format|
      format.html { redirect_to game_parts_url, notice: "Game part was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_part
      @game_part = GamePart.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def game_part_params
      params.require(:game_part).permit(:name, :game_id, images: [])
    end
end
