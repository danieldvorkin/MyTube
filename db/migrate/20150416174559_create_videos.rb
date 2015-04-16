class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :publisher
      t.string :title
      t.string :url
      t.string :source

      t.timestamps null: false
    end
  end
end
