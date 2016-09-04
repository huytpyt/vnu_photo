class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.attachment :image
      t.text :title
      t.text :prize
      t.timestamps null: false
    end
  end
end
