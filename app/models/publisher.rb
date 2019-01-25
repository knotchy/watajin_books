class Publisher < ApplicationRecord
  has_many :books
  has_many :series
end
