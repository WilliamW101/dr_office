class Doctor < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :specality

  has_many :appointments, dependent: :destroy
  has_many :patients, through: :appointments
end
