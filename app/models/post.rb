class Post < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :body, length: { minimum: 20, maximum: 2000 }

  belongs_to :user
  has_many :comments
end
