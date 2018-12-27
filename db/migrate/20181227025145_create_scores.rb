class CreateScores < ActiveRecord::Migration[5.2]
  def change
    create_table :scores do |t|
      t.integer :point
      t.references :ranking_participation, foreign_key: true
      t.references :target_chart, foreign_key: true

      t.timestamps
    end
  end
end
