class Image < ApplicationRecord
  belongs_to :work
  attachment :file
end
