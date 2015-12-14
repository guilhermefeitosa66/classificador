class Gender < ActiveRecord::Base
  has_many :pacients
  has_many :testimonies
end
