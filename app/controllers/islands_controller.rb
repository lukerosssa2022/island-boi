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

  private

  def island_params
    params.require(:island).permit(:name, :country, :description, :price_per_day, :size)
  end
end
