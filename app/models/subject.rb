class Subject < ApplicationRecord
  # Associations
  has_one :user
  has_many :grades

  # Validations
  validates :name, :user_id,  :presence     => {:message => I18n.t("errors.presence")}
  validates :user_id,         :numericality => {:message => I18n.t("errors.numericality")}
end
