class Music < ApplicationRecord
  belongs_to :game
  has_many :charts
end
