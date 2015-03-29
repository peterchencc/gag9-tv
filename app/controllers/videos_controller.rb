class VideosController < ApplicationController

  before_action :set_video, :only => [ :show, :edit, :update, :destroy ]

  def index
    @videos = Video.page(params[:page]).per(10)

    if params[:id]
      set_video
    else
      @video = Video.new
    end
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
      @videos = Video.page(params[:page]).per(10)
      render :action => :index
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
      @videos = Video.page(params[:page]).per(10)
      render :action => :index
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
    params.require(:video).permit(:name, :description, :url, :is_public, :youtube_id, :public_datetime, :status)
  end

end
