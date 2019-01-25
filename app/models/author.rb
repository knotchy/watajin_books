class Author < ApplicationRecord
  has_many :books
  has_many :series

  validates :name,presence: true
end
