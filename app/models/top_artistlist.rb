class TopArtistlist < ApplicationRecord
  validates :user_id, presence: true
  validates :artistlist, presence: true

  belongs_to :user
end
