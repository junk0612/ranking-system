class Game < ApplicationRecord
  has_many :musics
  has_many :charts, through: :musics
  has_many :chart_types
end
