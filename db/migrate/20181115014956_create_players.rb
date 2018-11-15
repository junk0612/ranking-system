class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :id_name
      t.string :display_name

      t.timestamps
    end
  end
end
