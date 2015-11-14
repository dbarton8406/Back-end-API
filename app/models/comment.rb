class Comment < ActiveRecord::Base
	belongs_to :post
	belongs_to :treasurer
	belongs_to :roomate
end
