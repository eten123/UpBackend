class Watchlist < ApplicationRecord
    belongs_to :brand
    belongs_to :user
end
