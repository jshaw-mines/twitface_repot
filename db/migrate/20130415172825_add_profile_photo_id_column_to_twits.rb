class AddProfilePhotoIdColumnToTwits < ActiveRecord::Migration
  def change
    add_column :twits, :profile_photo_id, :integer
  end
end
