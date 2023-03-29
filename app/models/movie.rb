class Movie < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  has_many :bookmarks
  has_many :lists, through: :bookmarks
end
