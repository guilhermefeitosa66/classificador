class Gender < ActiveRecord::Base
  has_many :pacients
  has_many :testimonies
  has_many :videos
end
