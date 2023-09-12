class Comment < ApplicationRecord
  # Validation
  validates :content, presence: true, length: { maximum: 100 }

  # Association
  belongs_to :post
end

