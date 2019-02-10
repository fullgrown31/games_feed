class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.references :user, foreign_key: true
      t.references :game, foreign_key: true
      t.integer :userscore

      t.timestamps
    end
  end
end
