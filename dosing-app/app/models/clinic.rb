class Clinic < ApplicationRecord
  #RELATIONSHIPS
  has_many :doctors
  has_many :patients
end
