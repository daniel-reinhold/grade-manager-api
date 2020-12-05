class User < ApplicationRecord
  # Associations
  has_many :subjects
  has_many :grades
  has_one :setting

  # Validations
  validates :first_name,
            :last_name,
            :username,
            :email,
            :is_student,
            :password,        :presence => {:message => I18n.t("errors.presence")}
  validates :date_of_birth,   :presence => {:message => I18n.t("errors.format.date")}
  validates :email,           :format   => {:with => /\w+@\w+\.[a-zA-Z]{2,}/, :message => I18n.t("errors.format.email")}
  validates :password,        :length   => {:minimum => 5, :message => I18n.t("errors.format.password")}
end
