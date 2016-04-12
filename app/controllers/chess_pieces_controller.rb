class ChessPiecesController < ApplicationController
  before_action :set_chess_piece, only: [:show, :edit, :update, :destroy]

  # GET /chess_pieces
  # GET /chess_pieces.json
  def index
    @chess_pieces = ChessPiece.all
  end

  # GET /chess_pieces/1
  # GET /chess_pieces/1.json
  def show
  end

  # GET /chess_pieces/new
  def new
    @chess_piece = ChessPiece.new
  end

  # GET /chess_pieces/1/edit
  def edit
  end

  # POST /chess_pieces
  # POST /chess_pieces.json
  def create
    @chess_piece = ChessPiece.new(chess_piece_params)

    respond_to do |format|
      if @chess_piece.save
        format.html { redirect_to @chess_piece, notice: 'Chess piece was successfully created.' }
        format.json { render :show, status: :created, location: @chess_piece }
      else
        format.html { render :new }
        format.json { render json: @chess_piece.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chess_pieces/1
  # PATCH/PUT /chess_pieces/1.json
  def update
    respond_to do |format|
      if @chess_piece.update(chess_piece_params)
        format.html { redirect_to @chess_piece, notice: 'Chess piece was successfully updated.' }
        format.json { render :show, status: :ok, location: @chess_piece }
      else
        format.html { render :edit }
        format.json { render json: @chess_piece.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chess_pieces/1
  # DELETE /chess_pieces/1.json
  def destroy
    @chess_piece.destroy
    respond_to do |format|
      format.html { redirect_to chess_pieces_url, notice: 'Chess piece was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chess_piece
      @chess_piece = ChessPiece.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chess_piece_params
      params.require(:chess_piece).permit(:pieceType, :pieceImage, :initialRow, :initialCol)
    end
end
