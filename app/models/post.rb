class Post < ApplicationRecord
	belongs_to :user
	validates :nickname, :age, presence: true
	

end
