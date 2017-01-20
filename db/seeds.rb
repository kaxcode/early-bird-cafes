# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

admin = User.create(name: "Kenia", uid: "@kaxcode", nickname: "Kenia", access_token: 1)

black_brew = Shop.create!(cafe_image: File.open(Rails.root.join("db/seeds/black_brew.jpg")), name: "Black & Brew Coffee House & Bistro", address: "205 E Main St, Lakeland, FL 33801", price: 3, hours: "Monday-Thursday 7am- 8pm, Friday 7am-10pm, Saturday 8am-10pm, Sunday 11am-4pm", user: admin)
geocode = Geocode.new(black_brew)
geocode.lookup

concord = Shop.create!(cafe_image: File.open(Rails.root.join("db/seeds/concord.jpg")), name: "Concord Coffee Company", address: "1037 Florida Ave S #, Lakeland, FL 33803", price: 1, hours: "Monday-Thursday 7am- 8pm, Friday 7am-10pm, Saturday 8am-10pm, Sunday 11am-4pm", user: admin)
geocode = Geocode.new(concord)
geocode.lookup

frescos = Shop.create!(cafe_image: File.open(Rails.root.join("db/seeds/frescos.jpg")), name: "Fresco's Bakery & Bistro", address: "132 S Kentucky Ave, Lakeland, FL 33801", price: 4, hours: "Monday-Thursday 7am- 8pm, Friday 7am-10pm, Saturday 8am-10pm, Sunday 11am-4pm", user: admin)
geocode = Geocode.new(frescos)
geocode.lookup

mitchells = Shop.create!(cafe_image: File.open(Rails.root.join("db/seeds/mitchells.JPG")), name: "Mitchell's Coffee House", address: "235 N Kentucky Ave, Lakeland, FL 33801", price: 3, hours: "Monday-Thursday 7am- 8pm, Friday 7am-10pm, Saturday 8am-10pm, Sunday 11am-4pm", user: admin)
geocode = Geocode.new(mitchells)
geocode.lookup

felicitous = Shop.create!(cafe_image: File.open(Rails.root.join("db/seeds/felicitous.jpg")), name: "Felicitous Coffee & Tea House", address: "11706 N 51st St, Tampa, FL 33617", price: 2, hours: "Monday-Thursday 7am- 8pm, Friday 7am-10pm, Saturday 8am-10pm, Sunday 11am-4pm", user: admin)
geocode = Geocode.new(felicitous)
geocode.lookup

the_poor_porker = Shop.create!(cafe_image: File.open(Rails.root.join("db/seeds/poor_porker.jpg")), name: "The Poor Porker", address: "801 E Main St, Lakeland, FL 33801", price: 4, hours: "Monday-Thursday 7am- 8pm, Friday 7am-10pm, Saturday 8am-10pm, Sunday 11am-4pm", user: admin)
geocode = Geocode.new(the_poor_porker)
geocode.lookup

buddybrew = Shop.create!(cafe_image: File.open(Rails.root.join("db/seeds/buddybrew.jpg")), name: "Buddy Brew Coffee", address: "2020 W Kennedy Blvd, Tampa, FL 33606", price: 5, hours: "Monday-Thursday 7am- 8pm, Friday 7am-10pm, Saturday 8am-10pm, Sunday 11am-4pm", user: admin)
geocode = Geocode.new(buddybrew)
geocode.lookup
