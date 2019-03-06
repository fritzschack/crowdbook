class DropGenreColumnFromMusicians < ActiveRecord::Migration[5.2]
  def change
    remove_column :musicians, :genre_id
  end
end
