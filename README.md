# Purpose #
Create a rails app for a cafes in Lakeland, FL.
- - - - -
# How #
* ✅ rails new early-bird-cafes
* ✅ Gem ‘omniauth’ for authorization and authentication / user model
* ✅ Cafe scaffold: $ rails g scaffold shop name address website hours:text phone_number price:integer user:references
  - Add before_action :authenticate!, except: [:index, :show]
  - Update the create method to include @shop.user_id = logged_in?
* ✅ Bootstrap Theme (asset pipeline)
* Gem ‘refile’ rails migrate to add menu_id cafe_image_id to shops tables
* Features/Branches
  - Search/Random select restaurant name
  - Gem ‘Kaminari’ for pagination (limit 4 cafes per page)
  - Populate menu (React.js)
  - View hours and phone when hover over restaurant image
- - - - -
# Results #
