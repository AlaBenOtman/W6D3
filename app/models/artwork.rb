# t.string :title, null: false, presence: true
# t.string :image_url, null: false, presence: true
# t.integer :artist_id, null: false, presence: true

class Artwork < ApplicationRecord
    validates :title, uniqueness: {scope: :artist_id}
  

    # def unqiue_individual_artwork
    #   self.title.each do |artwork|
    #         if title.count(artwork) >= 2
    #             error[:title] << "each individual cannot have duplicate title of artwork"
    #         end
    #     end
    # end

    belongs_to :artist,
        foreign_key: :artist_id,
        class_name: :User


end