# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Sample organic produce items for the marketplace

# Clear existing items
Item.destroy_all

# Sample items with realistic data
items_data = [
  {
    name: "Fresh Tomatoes",
    item_type: "Vegetable",
    quantity: 5.0,
    quantity_unit: "kg",
    price: 120.0,
    phone: "+91-9876543210",
    latitude: 12.9716,
    longitude: 77.5946
  },
  {
    name: "Organic Carrots",
    item_type: "Vegetable",
    quantity: 3.0,
    quantity_unit: "kg",
    price: 80.0,
    phone: "+91-9876543211",
    latitude: 12.9716,
    longitude: 77.5946
  },
  {
    name: "Sweet Mangoes",
    item_type: "Fruit",
    quantity: 10.0,
    quantity_unit: "kg",
    price: 200.0,
    phone: "+91-9876543212",
    latitude: 12.9716,
    longitude: 77.5946
  },
  {
    name: "Fresh Spinach",
    item_type: "Vegetable",
    quantity: 2.0,
    quantity_unit: "kg",
    price: 60.0,
    phone: "+91-9876543213",
    latitude: 12.9716,
    longitude: 77.5946
  },
  {
    name: "Organic Bananas",
    item_type: "Fruit",
    quantity: 15.0,
    quantity_unit: "kg",
    price: 150.0,
    phone: "+91-9876543214",
    latitude: 12.9716,
    longitude: 77.5946
  },
  {
    name: "Fresh Onions",
    item_type: "Vegetable",
    quantity: 8.0,
    quantity_unit: "kg",
    price: 100.0,
    phone: "+91-9876543215",
    latitude: 12.9716,
    longitude: 77.5946
  },
  {
    name: "Organic Apples",
    item_type: "Fruit",
    quantity: 6.0,
    quantity_unit: "kg",
    price: 300.0,
    phone: "+91-9876543216",
    latitude: 12.9716,
    longitude: 77.5946
  },
  {
    name: "Fresh Potatoes",
    item_type: "Vegetable",
    quantity: 12.0,
    quantity_unit: "kg",
    price: 120.0,
    phone: "+91-9876543217",
    latitude: 12.9716,
    longitude: 77.5946
  },
  {
    name: "Organic Oranges",
    item_type: "Fruit",
    quantity: 8.0,
    quantity_unit: "kg",
    price: 240.0,
    phone: "+91-9876543218",
    latitude: 12.9716,
    longitude: 77.5946
  },
  {
    name: "Fresh Cucumbers",
    item_type: "Vegetable",
    quantity: 4.0,
    quantity_unit: "kg",
    price: 80.0,
    phone: "+91-9876543219",
    latitude: 12.9716,
    longitude: 77.5946
  }
]

# Create items
items_data.each do |item_data|
  Item.create!(item_data)
end

puts "Created #{Item.count} sample items in the database!"
