class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  enum role: [:unspecified, :patient, :clinician]
  has_many :treatments_as_patient, :class_name => "Treatment", :foreign_key => "patient_id"
  has_many :treatments_as_clinician, :class_name => "Treatment", :foreign_key => "clinician_id"
end
