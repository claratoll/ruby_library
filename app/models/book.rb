class Book < ApplicationRecord
  has_many_attached :image
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }

  belongs_to :user
  has_many :user_libraries
end
