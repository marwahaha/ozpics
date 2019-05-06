# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Photo id: nil, title: nil, description: nil, price: nil, created_at: nil, updated_at: nil, seller_id: nil, category_id: nil>

puts "Start of Seed"
["Family", "Industry", "Lifestyle", "Nature", "Youth"].each do |category|
  Category.create(name: category)
end

puts "End of seed"
