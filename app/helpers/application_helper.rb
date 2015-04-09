module ApplicationHelper

  def glyph(name)
    #<span class=\"glyphicon glyphicon-#{name}\"></span> ".html_safe
    content_tag(:span, " ", :class => "glyphicon glyphicon-#{name}" ) + " "
  end

end
