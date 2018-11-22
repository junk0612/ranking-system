class CreateMusics < ActiveRecord::Migration[5.2]
  def change
    create_table :musics do |t|
      t.string :title, null: false
      t.references :game, foreign_key: true
      t.datetime :created_at, null: false
    end
  end
end
