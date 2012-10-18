class AddAttachmentAttachedVideoToDares < ActiveRecord::Migration
  def self.up
    change_table :dares do |t|
      t.has_attached_file :attached_video
    end
  end

  def self.down
    drop_attached_file :dares, :attached_video
  end
end
