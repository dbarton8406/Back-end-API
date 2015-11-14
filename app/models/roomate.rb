class Roomate < ActiveRecord::Base
	belongs_to :treasurer
	has_many :bills
	has_many :posts
	has_many :comments
end
