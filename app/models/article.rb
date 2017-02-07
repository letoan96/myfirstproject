class Article < ApplicationRecord
	has_many :comments
	def self.search(search)
  		where("title LIKE ?", "%#{search}%") 
	end
	def increment(by = 1)
  	self.views ||= 0
  	self.views += by
  	self.save
end
end
