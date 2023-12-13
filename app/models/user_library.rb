class UserLibrary < ApplicationRecord

  validates :rating, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }

  validates :status, inclusion: { in: %w(att_läsa läser läst_ut) }

  belongs_to :user
  belongs_to :book
end
