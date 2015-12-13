class PresentedTestimony < ActiveRecord::Base
  belongs_to :pacient
  belongs_to :testimony
end
