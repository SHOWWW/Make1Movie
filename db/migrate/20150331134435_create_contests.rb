class CreateContests < ActiveRecord::Migration
  def change
    create_table :contests do |t|
      t.string :name
      t.text :article
      t.integer :layout
      t.boolean :writer
      t.boolean :scope

      t.timestamps null: false
    end
  end
end
