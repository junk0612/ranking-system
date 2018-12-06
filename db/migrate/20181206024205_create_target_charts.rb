class CreateTargetCharts < ActiveRecord::Migration[5.2]
  def change
    create_table :target_charts do |t|
      t.references :ranking, foreign_key: true
      t.references :chart, foreign_key: true

      t.timestamps
    end
  end
end
