class Subject < ApplicationRecord
  # Associations
  has_one :user
  has_many :grades

  # Validations
  validates :name, :user_id, :presence => {:message => 'Value has to be specified'}
end
