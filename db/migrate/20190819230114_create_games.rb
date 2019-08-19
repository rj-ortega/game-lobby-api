class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.string :img
      t.string :platform
      t.decimal :score
      t.text :description
      t.boolean :playing
      t.boolean :wishlist
      t.boolean :finished

      t.timestamps
    end
  end
end
