class CreateRankingParticipations < ActiveRecord::Migration[5.2]
  def change
    create_table :ranking_participations do |t|
      t.references :ranking, foreign_key: true
      t.references :player, foreign_key: true

      t.timestamps
    end
  end
end
