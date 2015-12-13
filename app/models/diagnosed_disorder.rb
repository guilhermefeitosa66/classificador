class DiagnosedDisorder < ActiveRecord::Base
  belongs_to :disorder
  belongs_to :diagnosis
end
