class AddLocationAndMediumToArtworks < ActiveRecord::Migration[7.0]
  def change
    add_column :artworks, :location, :string
    add_column :artworks, :medium, :string
  end
end
