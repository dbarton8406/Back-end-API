class Bill < ActiveRecord::Base
	belongs_to :roomate
	belongs_to :treasurer
end
