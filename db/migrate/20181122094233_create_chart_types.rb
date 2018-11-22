class CreateChartTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :chart_types do |t|
      t.string :name, null: false
      t.references :game, foreign_key: true
      t.integer :display_order, null: false
      t.datetime :created_at, null: false
    end
  end
end
