class AddSubtitleToReview < ActiveRecord::Migration[7.0]
  def change
    add_column :reviews, :subtitle, :string
  end
end
