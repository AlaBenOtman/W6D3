class ArtworkShare < ApplicationRecord
    validates :artwork_id, uniqueness: {scope: :viewer_id}
    validates :artwork_id, :viewer_id, presence: true, uniqueness: true
    

    belongs_to :viewer,
        foreign_key: :viewer_id,
        class_name: :User
    
    belongs_to :shared_artwork,
        foreign_key: :artwork_id,
        class_name: :Artwork

    
end 