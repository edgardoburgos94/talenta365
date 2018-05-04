class Town < ApplicationRecord
  has_many :assignements, dependent: :destroy
  has_many :zones, through: :assignements
end
