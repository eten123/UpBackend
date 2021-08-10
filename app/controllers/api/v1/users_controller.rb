class Api::V1::UsersController < ApplicationController
    def index 
        @users = User.all
        render json: @users
    end

    def show
    @user = User.find(params[:id])
    render json: @user
    end

    def update
    @user = User.find(params[:id]);
    @user.update(check_params)
        if @user.valid?
        render json: @user
        else
        render json: {errors: @user.errors.full_messages}
        end
    end

    private
    def check_params
        params.permit(:firstname, :lastname, :age)
    end
end
