class ClinicSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :clinic_number
  has_many :doctors
  has_many :patients
end
