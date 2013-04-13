class Photo < ActiveRecord::Base

	belongs_to :album

	validates_presence_of :title
	has_attached_file :picture
	
end
