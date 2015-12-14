class Medic < ActiveRecord::Base
  belongs_to :expertise

  has_many :pacients, dependent: :destroy
end
