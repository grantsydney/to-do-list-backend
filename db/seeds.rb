# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


u1 = User.create(name: 'Sydney')

l1 = List.create(name: 'Supermarket', user_id: 1)
l2 = List.create(name: 'CVS', user_id: 1)

i1 = Item.create(name: 'Eggs', list_id: 1)
i2 = Item.create(name: 'Milk', list_id: 1)
i3 = Item.create(name: 'Yogurt', list_id: 1)
i4 = Item.create(name: 'Cereal', list_id: 1)
i5 = Item.create(name: 'Baking Powder', list_id: 1)
i6 = Item.create(name: 'Advil', list_id: 2)
i7 = Item.create(name: 'Nail Polish', list_id: 2)
i8 = Item.create(name: 'Trident Mint Gum', list_id: 2)
i9 = Item.create(name: 'Shampoo', list_id: 2)
