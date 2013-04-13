class Album < ActiveRecord::Base

	has_many :photos, dependent: :destroy
	belongs_to :twit
	
	validates_presence_of :title
	
end
