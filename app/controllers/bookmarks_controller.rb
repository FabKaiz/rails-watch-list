class BookmarksController < ApplicationController
  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.save

    redirect_to lists_path(@lists)
  end

  def new
    @lists = List.all
    @bookmark = Bookmark.new
    if @bookmark.save
      redirect_to lists_path(@lists)
    end
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id, :list_id)
  end
end
