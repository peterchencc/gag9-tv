class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :name
      t.text :description
      t.text :url
      t.string :youtube_id
      t.boolean :is_public

      t.timestamps null: false
    end
  end
end
