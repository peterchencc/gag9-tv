class StaticsController < ApplicationController
  def index
    @videos = Video.all
  end
end
