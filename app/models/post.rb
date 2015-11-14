class Post < ActiveRecord::Base
	belongs_to :treasurer
	belongs_to :roomate
	has_many :comments
end
