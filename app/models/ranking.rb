class Ranking < ApplicationRecord
  belongs_to :owner, class_name: 'Player', foreign_key: 'player_id'
  has_many :ranking_participations
  has_many :participants, class_name: 'Player', through: :ranking_participations
end
