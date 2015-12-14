class Pacient < ActiveRecord::Base
  belongs_to :gender
  belongs_to :medic

  has_many :presented_testimonies, dependent: :destroy
  has_many :diagnoses, dependent: :destroy
end
