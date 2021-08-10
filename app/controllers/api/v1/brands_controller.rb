class Api::V1::BrandsController < ApplicationController
    def index 
        @brands = Brand.all
        render json: @brands
    end

    def show
    @brand = Brand.find(params[:id])
    render json: @brand
    end

    def update
    @brand = Brand.find(params[:id]);
    @brand.update(check_params)
        if @brand.valid?
        render json: @brand
        else
        render json: {errors: @brand.errors.full_messages}
        end
    end

    def create
        @brand = Brand.create(name: params[:brand])
        render json: @brand 
    end

    private
    def check_params
        params.permit(:firstname, :lastname, :age)
    end
    
end
