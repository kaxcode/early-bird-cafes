class Shop < ApplicationRecord
  belongs_to :user
  attachment :cafe_image

  PRICES = [
    ["", 0],
    ["$", 1],
    ["$$", 2],
    ["$$$", 3],
    ["$$$$", 4],
    ["$$$$$", 5]
  ]
end
