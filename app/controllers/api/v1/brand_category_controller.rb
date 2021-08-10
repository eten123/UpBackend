class Api::V1::BrandCategoryController < ApplicationController
    def create
        @brandcategory = BrandCategory.create(check_params)
        if @brandcategory.valid?
            render json: @brandcategory
        else
            render json: {errors @brandcategory.errors.full_messages}
        end
    private

    def check_params
        permit(:user_id, :brand_id)
    end
end
