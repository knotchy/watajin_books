class Series < ApplicationRecord
  has_many :books
  belongs_to :author
  belongs_to :publisher

  validates :series_name, presence: true
end
