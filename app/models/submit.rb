class Submit < ActiveRecord::Base
  belongs_to :user
  belongs_to :dare
  attr_accessible :attached_video
  has_attached_file :attached_video,:storage => :s3,
        :s3_credentials => "#{Rails.root}/config/s3.yml",
        :path => "/:filename",
        :url  => ":s3_sg_url",
        :use_timestamp => false
  
end
