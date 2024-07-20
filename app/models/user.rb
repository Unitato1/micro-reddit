class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :email, presence: true, length: { minimum: 4 }, uniqueness: true
  validates :password, presence: true, length: { minimum: 4 }

  has_many :posts
  has_many :comments

end
