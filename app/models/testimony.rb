class Testimony < ActiveRecord::Base
  belongs_to :disorder
  belongs_to :age_group
  belongs_to :gender
end
