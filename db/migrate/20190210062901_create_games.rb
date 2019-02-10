class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.references :genre, foreign_key: true
      t.references :platform, foreign_key: true
      t.string :name
      t.integer :metascore
      t.integer :userscore
      t.integer :year

      t.timestamps
    end
  end
end
