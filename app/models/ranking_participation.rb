class RankingParticipation < ApplicationRecord
  belongs_to :ranking
  belongs_to :player

  has_many :scores
end
