class Weapon < ApplicationRecord
    validates :name, presence: true, allow_blank: false
    validates :description, presence: true, allow_blank: false
    validates :dmg_type, presence: true, allow_blank: false
    validates :dmg_dice, presence: true, allow_blank: false
    validates :power_level, presence: true, allow_blank: false
end
