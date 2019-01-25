class Book < ApplicationRecord
  belongs_to :author
  belongs_to :series, optional: true
  belongs_to :publisher
  has_many :reviews

  validates :title,presence: true
end
