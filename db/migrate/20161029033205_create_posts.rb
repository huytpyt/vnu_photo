class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :category
      t.text :content

      t.timestamps null: false
    end
  end
end
