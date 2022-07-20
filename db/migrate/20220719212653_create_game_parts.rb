class CreateGameParts < ActiveRecord::Migration[7.0]
  def change
    create_table :game_parts do |t|
      t.string :name
      t.references :game_play, null: false, foreign_key: true

      t.timestamps
    end
  end
end
