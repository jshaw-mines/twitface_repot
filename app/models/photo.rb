class Photo < ActiveRecord::Base

	validates_presence_of :title
	has_attached_file :picture
	
end
