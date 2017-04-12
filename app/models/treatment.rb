class Treatment < ApplicationRecord
  belongs_to :clinician, class_name: 'User'
  belongs_to :patient, class_name: 'User'

validates :name, :injury, :duration, :frequency, :clinician_id, :patient_id, presence: true
validates :name, length: {maximum: 140}
validates :injury, length: {maximum: 140}
validates :duration, length: {maximum: 500}
validates :frequency, length: {maximum: 500}


end
