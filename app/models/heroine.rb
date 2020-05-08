class Heroine < ApplicationRecord
  has_many :heroPowers
  has_many :powers,through: :heroPowers

  validates_presence_of :name
  validates_presence_of :super_name
  validates_uniqueness_of :super_name
end
