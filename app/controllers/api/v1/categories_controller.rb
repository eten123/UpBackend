class Api::V1::CategoriesController < ApplicationController
    def index 
        @categories = Category.all
        render json: @categories
    end

    def show
    @category = Category.find(params[:id])
    render json: @category
    end

    def update
    @category = Category.find(params[:id]);
    @category.update(check_params)
        if @category.valid?
        render json: @category
        else
        render json: {errors: @category.errors.full_messages}
        end
    end

    private
    def check_params
        params.permit(:firstname, :lastname, :age)
    end
    
end
