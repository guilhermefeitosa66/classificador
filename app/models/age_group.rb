class AgeGroup < ActiveRecord::Base
  has_many :testimonies
  has_many :videos
end
