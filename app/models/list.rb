class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks

  # validates :title, uniqueness: true
  validates :name, presence: true, uniqueness: true
end