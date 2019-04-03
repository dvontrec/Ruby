class Doc < ApplicationRecord
  # sets up document ownership
  belongs_to :user
end
