class Player < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :rankings
  has_many :ranking_participations
  has_many :participated_rankings, source: :ranking, through: :ranking_participations
end
