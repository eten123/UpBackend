class Api::V1::WatchlistController < ApplicationController
    def create
        @watchlist = Watchlist.create(check_params)
        if @watchlist.valid?
            render json: @watchlist
        else
            render json: {errors @watchlist.errors.full_messages}
        end
    private

    def check_params
        permit(:user_id, :brand_id)
    end
end
