class Treasurer < ActiveRecord::Base
	has_many :roomates
	has_many :bills
	has_many :posts
	has_many :comments
end
