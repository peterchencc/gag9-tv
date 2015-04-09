class StaticsController < ApplicationController
  def index
    @videos = Video.where( :status => 'public' )
  end
end
