# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
u = User.new
u.email = "admin@test.com"           # 可以改成自己的 email

u.password = "123456"                # 最少要六码

u.password_confirmation = "123456"   # 最少要六码

u.is_admin = true
u.save
#
Product.create!(title: "ds",
description: "book",
price: 39,
quantity: 3,
image: open("http://g.search1.alicdn.com/img/i1/100579204/TB2y.7Pj8HH8KJjy0FbXXcqlpXa_!!0-saturn_solar.jpg_220x220.jpg")
)

Product.create!(title:"为答复",
description: "ag",
price:42,
quantity:2,
image: open("http://g.search2.alicdn.com/img/i2/127537652/TB2bB8IbfBNTKJjy1zdXXaScpXa_!!0-saturn_solar.jpg_220x220.jpg")
)

Product.create!(title:"dfs",
description: "花生米",
price: 34,
quantity: 12,
image: open("http://g.search2.alicdn.com/img/i2/40220179/TB2PWysb3oSMeJjSspaXXbMOFXa_!!0-saturn_solar.jpg_220x220.jpg")
)
