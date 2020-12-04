class User < ApplicationRecord
  has_many :subjects
  has_many :grades
  has_one :setting

  validates :first_name, :last_name, :username, :email, :is_student, :password, :presence => {:message => 'No value provided'}
  validates :date_of_birth, :presence => {:message => 'Invalid date'}
  validates :email, :format => {:with => /\w+@\w+\.{1}[a-zA-Z]{2,}/, :message => 'Invalid email'}
  validates :password, :length => {:minimum => 5, :message => 'Not long enough'}
end
