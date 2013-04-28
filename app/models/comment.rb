class Comment < ActiveRecord::Base
	belongs_to :twit

	validates_presence_of :comment
end
