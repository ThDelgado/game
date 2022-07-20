class CreateGamePlays < ActiveRecord::Migration[7.0]
  def change
    create_table :game_plays do |t|
      t.string :name
      t.string :date
      t.string :description

      t.timestamps
    end
  end
end
