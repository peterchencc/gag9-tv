module VideosHelper

  def display_video_status(v)
    icon = (v.public?)? glyph(:check) : glyph(:paperclip)
    icon + t( v.status, :scope => "video.status" )
  end

  def video_status_options
    Video::STATUS.map{ |x| [ t(x, :scope => "video.status"), x ]}
  end

end
