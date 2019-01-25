class Review < ApplicationRecord
  belongs_to :book

  validates :title, length: { in: 1..12 }
end
