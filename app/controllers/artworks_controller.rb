class ArtworksController < ApplicationController
    
    def index
        render json: Artwork.all
    end

    def show
        render json: Artwork.find(params[:id])
    end

    def create
        artwork = Artwork.new(artwork_params)
        
        if artwork.save
            render json: artwork
        else
            render json: artwork.errors.full_messages, status: :unprocessable_entity
        end
    end

    def update
        target = Artwork.find(params[:id])

        if target.update(artwork_params)
            redirect_to artworks_url(target)
        else 
            render json: target.error.full_messages, status: :unprocessable_entity
        end
    end

    def destroy
        target = Artwork.find(params[:id])
        
        target.destroy
       
        render json: target
    end

    private
    
    def artwork_params
        params.require(:artwork).permit(:title, :image_url, :artist_id)
    end 

end