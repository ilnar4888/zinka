class Work < ApplicationRecord
  has_many :images, dependent: :destroy
  accepts_attachments_for :images, attachment: :file
end
