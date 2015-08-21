class CreateActorDirectors < ActiveRecord::Migration
  def change
    create_table :actor_directors do |t|
      t.integer :actor_id
      t.integer :director_id
      t.timestamps null: false
    end
  end
end
