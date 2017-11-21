class Slider < ApplicationRecord
  attachment :slider_image
  validates :slider_image, presence: true
end
