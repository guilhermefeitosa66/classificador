class Video < ActiveRecord::Base
  belongs_to :gender
  belongs_to :disorder_group
  belongs_to :medic
end
