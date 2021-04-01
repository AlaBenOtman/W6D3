# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
    Artwork.destroy_all
    User.destroy_all

    snoppy = User.create!(username: "snoppy")
    wows = User.create!(username: "wows")
    jackson = User.create!(username: "jackson")
    jay = User.create!(username: "jay")
    lucy = User.create!(username: "lucy")

    # t.string :title, null: false, presence: true
    # t.string :image_url, null: false, presence: true
    # t.integer :artist_id, null: false, presence: true

    monaiisa = Artwork.create!(title: "monaniisa", image_url: "www.monamona.com", artist_id: snoppy.id)
    nanaaiisa = Artwork.create!(title: "nanaaiisa", image_url: "www.nanaaiisa.com", artist_id: wows.id)
    loiliaiisa = Artwork.create!(title: "loiliaiisa", image_url: "www.loiliaiisa.com", artist_id: snoppy.id)
    hdhisa = Artwork.create!(title: "hdhisa", image_url: "www.hdhisa.com", artist_id: jay.id)
    aws = Artwork.create!(title: 'Shawshank Redemption, The', image_url: "www.ShawshankRedemp.com", artist_id: lucy.id)
    aws = Artwork.create!(title: 'Pulp Fiction', image_url: "www.Pulp.com", artist_id: jackson.id)

    ArtworkShare.create!(artwork_id: monaiisa.id, viewer_id: wows.id)



