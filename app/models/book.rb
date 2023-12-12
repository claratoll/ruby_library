class Book < ApplicationRecord
  has_many_attached :image
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
