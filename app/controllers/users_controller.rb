class UsersController < ApplicationController

    def index 
        render json: User.all, status: :ok
    end

    def show
        user = find_user
        render json: user, status: :ok
    end
    
    def create
        user = User.create!(user_params)
        render json: user, status: 201
    end

    def destroy
        user = find_user
        user.destroy
        head :no_content
    end


    private

    def user_params
        params.permit(:name)
    end

    def find_user
       User.find(params[:id]) 
    end
end
