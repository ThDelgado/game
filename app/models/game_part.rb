class GamePart < ApplicationRecord
  belongs_to :game
  has_many_attached :images
  
end
