class RemoveContentFromArtworks < ActiveRecord::Migration[7.0]
  def change
    remove_column :artworks, :content, :string
  end
end
