class DisorderGroup < ActiveRecord::Base
  has_many :disorders
  has_many :testimonies, through: :disorders
end
