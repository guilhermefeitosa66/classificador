class StaticController < ApplicationController
  def index
  end

  def testimonies
    @disorder_groups = DisorderGroup.all
  end
end
