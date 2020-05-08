class Heroine < ApplicationRecord
    has_many :heroine_powers
    has_many :powers, through: :heroine_powers

    validates :name, presence: true
    validates :name, uniqueness: true
    validates :super_name, presence: true


    def power_id
        nil
     end
    
     def power_id=(new_id)
        power = Power.find(new_id)
        self.powers << power
     end
end
