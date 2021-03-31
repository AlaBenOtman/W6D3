class UsersController < ApplicationController
    
    def index
        render json: User.all
    end

    def show
        render json: User.find(params[:id])
    end

    def create
        user = User.new(params.require(:user).permit(:name, :email))
        
        if user.save
            render json: user
        else
            render json: user.errors.full_messages, status: :unprocessable_entity
        end
    end

    def update
        target = User.find(params[:id])

        if target.update(params.require(:user).permit(:name, :email))
            redirect_to users_url(target)
        else 
            render json: target.error.full_messages, status: :unprocessable_entity
        end
    end

    def destroy
        target = User.find(params[:id])
        
        target.destroy
        redirect_to users_url
    end

end