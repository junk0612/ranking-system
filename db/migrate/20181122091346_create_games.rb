class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :title, null: false

      t.datetime :created_at, null: false
    end
  end
end
