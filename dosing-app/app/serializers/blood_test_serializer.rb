class BloodTestSerializer < ActiveModel::Serializer
  attributes :id, :tsat, :ferrin, :date
  belongs_to :patient
end
