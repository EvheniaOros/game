class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_one :userparam
         has_many :posts
         validates :nickname, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
    validates :age, length: { in: 18..65 }
end
