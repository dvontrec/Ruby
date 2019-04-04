class Post < ApplicationRecord
  # has comments that depend on the post so they will be destroyed if post is removed
  has_many :comments, dependent: :destroy
  # add validation
  validates :title, presence: true, length: { minimum: 5 } # title must have at least 5 characters
  validates :body, presence:true
end
