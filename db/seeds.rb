# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "faker"
Category.destroy_all
#creates the category
Category.create(name: 'Music')
Category.create(name: 'Athletics')
Category.create(name: 'Content Creator')
Category.create(name: 'Tiktok')
Category.create(name: 'Upcoming Movie Actors')
risingCompany = Category.create(name: 'Rising Companies')


#creates the brands 
100.times do
    name = Faker::Name.name
    brands = Brand.new(
        name: name
    )
    brands.save
end

#creates the brand category fake data. But don't we automatically have access to the brand_categories
100.times do 
    brandCategory = BrandCategory.new(
        category_id: Category.all.id.sample,
        brand_id: Brand.all.ids.sample
    )
    brandCategory.save
end

#creates the users
100.times do 
    firstName = Faker::Name.first_name
    lastName = Faker::Name.last_name
    age = Faker::Number.between(from: 16, to: 80)
    user = User.new(
        first_name: firstName,
        last_name: lastName,
        age: age
    )
    user.save
end

#creates watchlist
100.times do 
    watchlist = Watchlist.new(
        user_id: User.all.ids.sample,
        brand_id: Brand.all.ids.sample
    )
    brandCategory.save
end