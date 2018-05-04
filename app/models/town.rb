class Town < ApplicationRecord
  has_many :assignements, dependent: :destroy
  has_many :zones, through: :assignements

  after_save :check_town_status

  private
    def check_town_status
      if self.status == false
        Assignement.where(town_id: self.id).delete_all
      end
    end
end
