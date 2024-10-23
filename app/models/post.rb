class Post < ApplicationRecord
  belongs_to :user

  # Validations
  validates :title, presence: true, length: { minimum: 5, maximum: 100 }
  validates :body, presence: true, length: { minimum: 10 }
  validates :user_id, presence: true
end