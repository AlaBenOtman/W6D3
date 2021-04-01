class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true
    
    has_many :artwork_shares,
    foreign_key: :viewer_id,
    class_name: :ArtworkShare,
    dependent: :destroy
    
    has_many :artworks,
    foreign_key: :artist_id,
    class_name: :Artwork,
    dependent: :destroy
   
end