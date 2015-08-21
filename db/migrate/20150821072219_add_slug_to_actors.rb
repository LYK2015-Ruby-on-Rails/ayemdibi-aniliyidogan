class AddSlugToActors < ActiveRecord::Migration
  def change
    add_column :actors, :slug, :string
    add_index :actors, :slug, unique: true
  end
end
