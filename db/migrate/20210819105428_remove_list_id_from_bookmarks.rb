class RemoveListIdFromBookmarks < ActiveRecord::Migration[6.0]
  def change
    remove_column :bookmarks, :list_id, :integer
    remove_column :bookmarks, :movie_id, :integer
  end
end
