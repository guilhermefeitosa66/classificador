class StaticController < ApplicationController
  def index
  end

  def testimonies
    @disorder_groups = DisorderGroup.includes(:disorders, :testimonies).all
  end

  def show_testimony
    @testimony = Testimony.find(params[:id])
  end

  def videos
    @videos = Video.all
  end

  def watch_video
    
  end
end
