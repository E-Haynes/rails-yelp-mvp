class CleaningForeignKeyInReviews < ActiveRecord::Migration[6.1]
  def change
    remove_foreign_key :reviews, :restaurants
    remove_column :reviews, :restaurant_id, :integer
  end
end
