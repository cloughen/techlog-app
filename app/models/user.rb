class User < ApplicationRecord
  has_many :posts 
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, length: {maximum: 20}
  validates :nickname, presence: true
end
