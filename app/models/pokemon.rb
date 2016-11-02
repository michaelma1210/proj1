class Pokemon < ActiveRecord::Base

  belongs_to :trainer
  validates :name, uniqueness: { scope: :trainer_id}, presence: true

end
