class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.integer :contest_id
      t.string :url

      t.timestamps null: false
    end
  end
end
