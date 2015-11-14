class Roomate < ActiveRecord::Base
	belongs_to :treasurer
	has_many :bills
	has_many :posts
	has_many :comments
	has_secure_password

	validates_presence_of :username, :password 
	validates_uniqueness_of :username
	validates_format_of :email, with: /.+@.+\..+/

	

end
