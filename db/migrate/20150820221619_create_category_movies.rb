class CreateCategoryMovies < ActiveRecord::Migration
  def change
    create_table :category_movies do |t|
      t.integer :category_id
      t.integer :movie_id
      t.timestamps null: false
    end
  end
end
