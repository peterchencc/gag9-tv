class VideoAddColumn < ActiveRecord::Migration
  def change
    add_column :videos, :public_datetime, :datetime
    add_column :videos, :status, :string
  end
end
