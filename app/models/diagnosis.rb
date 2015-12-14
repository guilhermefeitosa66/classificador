class Diagnosis < ActiveRecord::Base
  belongs_to :pacient

  has_many :diagnosed_disorders, dependent: :destroy
end
