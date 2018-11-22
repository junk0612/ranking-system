class Chart < ApplicationRecord
  belongs_to :music
  belongs_to :chart_type
end
