class Zone < ApplicationRecord
  has_many :assignements, dependent: :destroy
  has_many :towns, through: :assignements

end
