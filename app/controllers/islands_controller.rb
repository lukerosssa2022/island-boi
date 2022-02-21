class IslandsController < ApplicationController
  def index
    @islands = Island.all
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

  def destroy
    @island.destroy
    if cuurent_user.island != []
      redirect_to root_path, notice: "Island was deleted successfully"
    else
      redirect_to root_path, notice: "Island was deleted successfully"


  private

  def island_params
    params.require(:island).permit(:name, :country, :description, :price_per_day, :size)
  end
end
