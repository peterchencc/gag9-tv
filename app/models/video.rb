class Video < ActiveRecord::Base

  STATUS = ["default", "public"]

  validates_presence_of :name, :description, :url
  validates_inclusion_of :status, :in => STATUS

  def public?
    status == "public"
  end

  def draft?
    !public?
  end

end
