class Appointment < ApplicationRecord
  validates_presence_of :time
  validates_uniqueness_of :time 

  belongs_to :doctor
  belongs_to :patient
end
