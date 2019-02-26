class DoctorSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :badge_number
  has_many :patients
  belongs_to :clinic
end
