class Status < ActiveRecord::Base
	attr_accessible :context, :user_id
	belongs_to :user
	validates_presence_of :user_id

	validates :context, presence: true,
	                    length: { minimum: 2 }

end
