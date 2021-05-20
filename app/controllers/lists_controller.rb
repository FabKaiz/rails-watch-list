class ListsController < ApplicationController
  def index
    @lists = List.all
    @list = List.new
  end

  def show
    @list = List.find(params[:id])
  end

  def create
    @list = List.new(list_params)
    # @movies = Movie.new()
    @list.save
    redirect_to lists_path(@lists)
  end

  #   def create
  #   @review = Review.new(review_params)
  #   # we need `restaurant_id` to associate review with corresponding restaurant
  #   @restaurant = Restaurant.find(params[:restaurant_id])
  #   @review.restaurant = @restaurant
  #   @review.save
  #   redirect_to restaurant_path(@restaurant)
  # end


   private

  def list_params
    params.require(:list).permit(:name)
  end
end
