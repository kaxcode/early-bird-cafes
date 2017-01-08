class Shop < ApplicationRecord
  belongs_to :user
  attachment :cafe_image
end
