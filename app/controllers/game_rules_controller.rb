class GameRulesController < ApplicationController
  before_action :set_game_rule, only: %i[ show edit update destroy ]

  # GET /game_rules or /game_rules.json
  def index
    @game_rules = GameRule.all
  end

  # GET /game_rules/1 or /game_rules/1.json
  def show
  end

  # GET /game_rules/new
  def new
    @game_rule = GameRule.new
  end

  # GET /game_rules/1/edit
  def edit
  end

  # POST /game_rules or /game_rules.json
  def create
    @game_rule = GameRule.new(game_rule_params)

    respond_to do |format|
      if @game_rule.save
        format.html { redirect_to game_rule_url(@game_rule), notice: "Game rule was successfully created." }
        format.json { render :show, status: :created, location: @game_rule }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @game_rule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /game_rules/1 or /game_rules/1.json
  def update
    respond_to do |format|
      if @game_rule.update(game_rule_params)
        format.html { redirect_to game_rule_url(@game_rule), notice: "Game rule was successfully updated." }
        format.json { render :show, status: :ok, location: @game_rule }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @game_rule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /game_rules/1 or /game_rules/1.json
  def destroy
    @game_rule.destroy

    respond_to do |format|
      format.html { redirect_to game_rules_url, notice: "Game rule was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_rule
      @game_rule = GameRule.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def game_rule_params
      params.require(:game_rule).permit(:game_rule, :game_id)
    end
end
