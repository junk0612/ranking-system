class Ranking < ApplicationRecord
  belongs_to :owner, class_name: 'Player'
end
