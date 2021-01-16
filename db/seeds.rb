# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.delete_all
Category.delete_all
main_categories = Category.create([
    {name: 'Fruits & Vegetables', parent_id: nil},
    {name: 'Dairy & Eggs', parent_id: nil},
    {name: 'Meat & Chicken', parent_id: nil},
    {name: 'Frozen Food', parent_id: nil},
    {name: 'Electronics', parent_id: nil}
])
sub_categories = Category.create([
    {name: 'Fruits', parent_id: main_categories.first.id},
    {name: 'Vegetables', parent_id: main_categories.first.id},
    {name: 'Eggs', parent_id: main_categories.second.id},
    {name: 'Milk & Dairy Beverages', parent_id: main_categories.second.id},
    {name: 'Cheese', parent_id: main_categories.second.id},
    {name: 'Yogurt', parent_id: main_categories.second.id},
    {name: 'Chicken', parent_id: main_categories.third.id},
    {name: 'Ice-Cream', parent_id: main_categories.fourth.id},
    {name: 'Computers', parent_id: main_categories.fifth.id},
    {name: 'Electronics for Home', parent_id: main_categories.fifth.id},
    {name: 'Butter', parent_id: main_categories.second.id},
    {name: 'Heavy Cream', parent_id: main_categories.second.id}
])
Product.create([
    {name: 'Green Smith Apple', category_id: sub_categories.first.id},
    {name: 'Strawberries', category_id: sub_categories.first.id},
    {name: 'Bananas', category_id: sub_categories.first.id},
    {name: 'Avocado', category_id: sub_categories.first.id},
    {name: 'Blueberries', category_id: sub_categories.first.id},
    {name: 'Cucumbers', category_id: sub_categories.second.id},
    {name: 'Tomatoes', category_id: sub_categories.second.id},
    {name: 'Onions', category_id: sub_categories.second.id},
    {name: 'Sweet Potatoes', category_id: sub_categories.second.id},
    {name: 'Potatoes', category_id: sub_categories.second.id},
    {name: 'Broccoli', category_id: sub_categories.first.id},
    {name: 'XL Eggs', category_id: sub_categories.third.id},
    {name: 'Organic Eggs', category_id: sub_categories.third.id},
    {name: 'Milk 3%', category_id: sub_categories.fourth.id},
    {name: 'Soy Milk', category_id: sub_categories.fourth.id},
    {name: 'Chocolate Milk', category_id: sub_categories.fourth.id},
    {name: 'Almond Milk', category_id: sub_categories.fourth.id},
    {name: 'Strauss Yogurt', category_id: sub_categories.fifth.id},
    {name: 'Milky', category_id: sub_categories.fifth.id},
    {name: 'Gouda Cheese', category_id: sub_categories[5].id},
    {name: 'Swiss Cheese', category_id: sub_categories[5].id},
    {name: 'Fresh Chicken Breast', category_id: sub_categories[6].id},
    {name: 'Frozen Chicken Breast', category_id: sub_categories[6].id},
    {name: 'B&J Toffee Crunch', category_id: sub_categories[7].id},
    {name: 'B&J Cookies&Cream', category_id: sub_categories[7].id},
    {name: 'MacBoock Prop', category_id: sub_categories[8].id},
    {name: 'Razer Blade 15', category_id: sub_categories[8].id},
    {name: 'Roomba', category_id: sub_categories[9].id},
    {name: 'Dyson Vacuum', category_id: sub_categories[9].id},
    {name: 'Xiaomi Smart TV 55"', category_id: sub_categories[9].id},
    {name: 'Strauss Butter', category_id: sub_categories[10].id},
    {name: 'Tara Butter', category_id: sub_categories[10].id},
    {name: '38% Heavy Cream', category_id: sub_categories[11].id},
    {name: '32% Heavy Cream', category_id: sub_categories[11].id}
])