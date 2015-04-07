module ApplicationHelper

  def glyph(name)
    return "<span class=\"glyphicon glyphicon-#{name}\"></span> ".html_safe
  end

end
