class UsersController < ApplicationController
    def index
    end

    def new
    end

    def create
    end

    def show
    end

    def edit
    end

    def update
    end
    
    def destroy
    end

    private

    def user_params
        params.require(:user).permit(:username, :password)
    end
end
