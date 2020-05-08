class Power < ApplicationRecord
  has_many :heroPowers
  has_many :heroines, through: :heroPowers
end
