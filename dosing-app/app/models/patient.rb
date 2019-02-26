class Patient < ApplicationRecord
  has_many :blood_tests
  belongs_to :clinic
  belongs_to :doctor
end
