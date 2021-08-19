class BookmarksController < ApplicationController

  def new
    @list = List.find(params[:id])
    @bookmark = Bookmark.new
  end

  def create
    @list = List.find(params[:id])
    @bookmark = Bookmark.new(bookmark_params)
      if @bookmark.save
        redirect_to list_path(@list)
      else
        render :new
      end
  end

  def destroy
    @bookmarks = Bookmark.find(params[:id])
    @bookmarks.destroy

    # no need for app/views/restaurants/destroy.html.erb
    redirect_to bookmarks_path
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id)
  end
end
