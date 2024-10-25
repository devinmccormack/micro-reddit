class Comment < ApplicationRecord
  
  belongs_to :user
  belongs_to :post

  # Validations
  validates :body, presence: true, length: { minimum: 5 }
  validates :user_id, presence: true
  validates :post_id, presence: true
end
