class Grade < ApplicationRecord
  # Associations
  belongs_to :subject

  # Validations
  validates :grade, :subject_id, :weighting,  :presence     => {:message => I18n.t("errors.presence")}
  validates :grade, :subject_id, :weighting,  :numericality => {:message => I18n.t("errors.numericality")}
end
