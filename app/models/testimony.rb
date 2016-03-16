class Testimony < ActiveRecord::Base
  belongs_to :disorder
  belongs_to :age_group
  belongs_to :gender
  belongs_to :disorder_group

  has_many :presented_testimonies, dependent: :destroy

  def short_testimony
    if self.testimony.nil?
      return ""
    else
      return "#{self.testimony.truncate(27)}..."
    end
  end
end
