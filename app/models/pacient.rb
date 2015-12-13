class Pacient < ActiveRecord::Base
  belongs_to :gender
  belongs_to :medic
end
