class Api::V1::UsersController < ApplicationController
    def index 
        @users = User.all
        render json: @users
    end

    def show
    @user = User.find(params[:id])
    render json: @user
    end

    def create
    @user = User.create(first_name: params[:first_name],last_name: params[:last_name],age: params[:age])
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
    
    def destroy
        @user = User.find(params[:id])
        @user.destroy
    end

    private
    def check_params
        params.permit(:firstname, :lastname, :age)
    end
end
