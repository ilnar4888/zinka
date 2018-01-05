class Team < ApplicationRecord
  attachment :team_image
  validates :team_image, presence: true
end
