class Disorder < ActiveRecord::Base
  belongs_to :disorder_group

  has_many :testimonies
  has_many :diagnosed_disorders, dependent: :destroy
end
