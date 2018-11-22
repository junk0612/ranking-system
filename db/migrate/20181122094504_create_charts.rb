class CreateCharts < ActiveRecord::Migration[5.2]
  def change
    create_table :charts do |t|
      t.float :difficulty, null: false
      t.references :music, foreign_key: true
      t.references :chart_type, foreign_key: true
      t.datetime :created_at, null: false
    end
  end
end
