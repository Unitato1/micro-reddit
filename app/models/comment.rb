class Comment < ApplicationRecord
  validates :title, presence: true, length: { minimum: 2, maximum: 30 }
  validates :body, presence: true, length: { minimum: 10, maximum: 200 }

  belongs_to :post
  belongs_to :user
end
