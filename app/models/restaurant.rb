class Restaurant < ApplicationRecord
  category = %w[chinese italian japanese french belgian]
  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: category }
  has_many :reviews, dependent: :destroy
end
