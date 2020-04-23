class Student < ApplicationRecord
  has_many :tutors, through: :klasses
  has_many :klasses
end
