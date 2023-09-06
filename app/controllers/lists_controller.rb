class ListsController < ApplicationController
  before_action :set_list, only: %i[ show update destroy ]

  # GET /boards/:id/lists
  def index
    @lists = List.where(board: params[:board_id]).order(updated_at: :desc)

    render json: @lists
  end

  # GET /lists/1
  def show
    render json: @list
  end

  # POST boards/:board_id/lists
  def create
    board = Board.find(params[:board_id])

    # Create a new list associated with the board
    @list = board.lists.new(list_params)

    if @list.save
      render json: @list, status: :created, location: @list
    else
      render json: @list.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /lists/1
  def update
    if @list.update(list_params)
      render json: @list
    else
      render json: @list.errors, status: :unprocessable_entity
    end
  end

  # DELETE /lists/1
  def destroy
    @list.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_list
      @list = List.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def list_params
      params.require(:list).permit(:title, :status, :board_id)
    end
end
