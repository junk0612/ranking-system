class Score < ApplicationRecord
  belongs_to :ranking_participation
  belongs_to :target_chart
end
