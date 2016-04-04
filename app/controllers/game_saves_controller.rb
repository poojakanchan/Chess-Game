class GameSavesController < ApplicationController
  before_action :set_game_safe, only: [:show, :edit, :update, :destroy]

  # GET /game_saves
  # GET /game_saves.json
  def index
    @game_saves = GameSave.all
  end

  # GET /game_saves/1
  # GET /game_saves/1.json
  def show
  end

  # GET /game_saves/new
  def new
    @game_safe = GameSave.new
  end

  # GET /game_saves/1/edit
  def edit
  end

  # POST /game_saves
  # POST /game_saves.json
  def create
    @game_safe = GameSave.new(game_safe_params)

    respond_to do |format|
      if @game_safe.save
        format.html { redirect_to @game_safe, notice: 'Game save was successfully created.' }
        format.json { render :show, status: :created, location: @game_safe }
      else
        format.html { render :new }
        format.json { render json: @game_safe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /game_saves/1
  # PATCH/PUT /game_saves/1.json
  def update
    respond_to do |format|
      if @game_safe.update(game_safe_params)
        format.html { redirect_to @game_safe, notice: 'Game save was successfully updated.' }
        format.json { render :show, status: :ok, location: @game_safe }
      else
        format.html { render :edit }
        format.json { render json: @game_safe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /game_saves/1
  # DELETE /game_saves/1.json
  def destroy
    @game_safe.destroy
    respond_to do |format|
      format.html { redirect_to game_saves_url, notice: 'Game save was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_safe
      @game_safe = GameSave.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def game_safe_params
      params.require(:game_safe).permit(:gameId, :playerId, :pieceId, :row, :col)
    end
end
