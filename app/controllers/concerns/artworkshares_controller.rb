class ArtworksharesController < ApplicationController
    
    
    def create
        artworkshare = Artworkshares.new(artwork_params)
        
        if artworkshare.save
            render json: artworkshare
        else
            render json: artworkshare.errors.full_messages, status: :unprocessable_entity
        end
    end

    def destroy
        target = Artworkshares.find(params[:id])
        
        target.destroy
       
        render json: target
    end

    private
    
    def artwork_params
        params.require(:artworkshare).permit(:artwork_id, :viewer_id)
    end 

end