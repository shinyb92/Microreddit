class User < ActiveRecord::Base 
	has_many :posts
	has_many :comments
	validates :username, presence: true, uniqueness: true, length: {maximum: 20}
	has_many :messages 
end
