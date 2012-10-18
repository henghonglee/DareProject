class Dare < ActiveRecord::Base
  attr_accessible :title, :attached_video, :description, :end_time,:amount_pledged
  has_many :submits
  belongs_to :user
  has_attached_file :attached_video,:storage => :s3,
       :s3_credentials => "#{Rails.root}/config/s3.yml",
       :path => "/:filename",
       :url  => ":s3_sg_url",
       :use_timestamp => false
       
       def attached_video_url
           if attached_video.file?
            attached_video.url
          else
            nil
        end    
      end
end
