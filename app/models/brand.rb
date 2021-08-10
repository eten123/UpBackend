class Brand < ApplicationRecord
    has_many :brandcategories ##the joiner so must go first
    has_many :categories, through: :brandcategories
    has_many :watchlist  #joiner table is written first so you have the bridge to connect to new table
    has_many :users, through: :watchlist
end
