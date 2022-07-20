class CreateGameRules < ActiveRecord::Migration[7.0]
  def change
    create_table :game_rules do |t|
      t.text :game_rule
      t.references :game_play, null: false, foreign_key: true

      t.timestamps
    end
  end
end
