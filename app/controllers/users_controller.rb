class UsersController < ApplicationController
    
    def index
        render json: User.all
    end

    def show
        render json: User.find(params[:id])
    end

    def create
        user = User.new(user_params)
        
        if user.save
            render json: user
        else
            render json: user.errors.full_messages, status: :unprocessable_entity
        end
    end

    def update
        target = User.find(params[:id])

        if target.update(user_params)
            redirect_to users_url(target)
        else 
            render json: target.error.full_messages, status: :unprocessable_entity
        end
    end

    def destroy
        target = User.find(params[:id])
        
        target.destroy
       
        render json: target
    end

    private
    
    def user_params
        params.require(:user).permit(:username)
    end 



end