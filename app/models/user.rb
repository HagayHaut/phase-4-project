class User < ApplicationRecord
  validates :name, uniqueness: true

  has_many :top_artistlists
  has_many :top_tracklists
end
