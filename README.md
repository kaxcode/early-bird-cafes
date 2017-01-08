# Purpose #
Create a rails app for a cafes in Lakeland, FL.
- - - - -
# How #
* ✅ rails new early-bird-cafes
* Gem ‘omniauth’ for authorization and authentication / user model
* Cafe scaffold: $ rails g scaffold shop name address website hours:text phone_number price:integer menu_id cafe_image_id user:references
* Bootstrap Theme (asset pipeline)
* Gem ‘refile’ for images model/cafe pictures/menus
* Features/Branches
  - Search/Random select restaurant name
  - Gem ‘Kaminari’ for pagination (limit 4 cafes per page)
  - Populate menu (React.js)
  - View hours and phone when hover over restaurant image
- - - - -
# Results #
