class PatientSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :patient_number
  has_many :blood_tests
  belongs_to :clinic
  belongs_to :doctor
end
