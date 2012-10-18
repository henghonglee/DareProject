class AddAttachmentAttachedVideoToSubmits < ActiveRecord::Migration
  def self.up
    change_table :submits do |t|
      t.has_attached_file :attached_video
    end
  end

  def self.down
    drop_attached_file :submits, :attached_video
  end
end
