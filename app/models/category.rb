class Category < ApplicationRecord
    has_many :brandcategories
    has_many :brands, through: :brandcategories
end
