class User < ApplicationRecord
    has_many :watchlist
    has_many :brands, through: :watchlist
end
