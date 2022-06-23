class User < ApplicationRecord
  validates :name, uniqueness: true

  has_many :top_artistlists
end
