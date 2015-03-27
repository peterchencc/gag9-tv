class VideosController < ApplicationController

  before_action :set_video, :only => [ :show, :edit, :update, :destroy ]

  def index
    @videos = Video.page(params[:page]).per(5)
  end

  def new
    @video = Video.new
  end

  def create
    @video = Video.new(video_params)
    if @video.save
      redirect_to videos_path
      flash[:notice] = "新增成功"
    else
      render :action => :new
    end
  end

  def show

  end

  def edit

  end

  def update
    if @video.update(video_params)
      redirect_to videos_path
      flash[:notice] = "編輯成功"
    else
      render :action => :edit
    end
  end

  def destroy
    @video.destroy
    flash[:alert] = "刪掉了！"
    redirect_to videos_path
  end


  private

  def set_video
    @video = Video.find(params[:id])
  end

  def video_params
    params.require(:video).permit(:name, :description, :url)
  end

end