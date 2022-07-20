class GamePlay < ApplicationRecord
    has_many :game_rules
    has_many :game_parts

    has_one_attached :image

    has_one_attached :image do |attachable|
     attachable.variant :thumb, resize_to_limit: [100, 100]
    end

end
