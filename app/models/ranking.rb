class Ranking < ApplicationRecord
  belongs_to :owner, class_name: 'Player', foreign_key: 'player_id'
end
