class Post < ApplicationRecord
  # add validation
  validates :title, presence: true, length: { minimum: 5 } # title must have at least 5 characters
  validates :body, presence:true
end
