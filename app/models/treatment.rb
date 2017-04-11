class Treatment < ApplicationRecord
  belongs_to :clinician, class_name: 'User'
  belongs_to :patient, class_name: 'User'
end
