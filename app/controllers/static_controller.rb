class StaticController < ApplicationController
  def index
  end

  def testimonies
    @disorder_groups = DisorderGroup.all
  end

  def videos
    @videos = Video.all
  end

  def watch_video
    
  end
end
