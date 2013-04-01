class AddAttachmentPhotoToTwits < ActiveRecord::Migration
  def self.up
    change_table :twits do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :twits, :photo
  end
end
