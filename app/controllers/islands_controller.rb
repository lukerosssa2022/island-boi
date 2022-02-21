class IslandsController < ApplicationController

before_action :find_island, only: [:edit, :destroy]

  def index
    @islands = Island.all
  end


  def show
    @island = Island.find(params[:id])
  end

  def edit
  end

  def new
    @island = Island.new
  end

  def create
    @island = Island.new(island_params)
    @island.user = current_user
    if @island.save
      redirect_to @island, notice: 'New island was created!'
    else
      render :new
    end
  end

  #def index_user
  #  @user_islands = current_user.islands
  #end

  def destroy
    @island.destroy
    redirect_to root_path, notice: "Island was deleted successfully"
  end


  private

  def find_island
    @island = Island.find(params[:id])
  end

  def island_params
    params.require(:island).permit(:name, :country, :description, :price_per_day, :size)
  end
end
