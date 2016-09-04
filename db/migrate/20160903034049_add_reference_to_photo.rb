class AddReferenceToPhoto < ActiveRecord::Migration
  def change
    add_reference(:photos, :author, foreign_key: true, index: true)
  end
end
