## Steps to integrate google maps api
* ✅ $ rails g migration AddLocationToShop lat:float lng:float
* ✅ rails db:migrate
  - now all shop will have lat and lng (latitude and longitude)
* ✅ Now we haeve to call the api
  - GEMFILE: gem 'httparty'
  - $ bundle
* ✅ Add API code info into a new model called Geocode (the process of making and address into geographical coordinates )
  - rails g model Geocode
* ✅ Update shop_controller.rb
  - Inside def create, after @shop = Shop.new(shop_params), we add...
  - Inside def update, inside the if @shop.update(shop_params) but before redirect_to @shop, we add...

    Geocode.new(@shop).lookup

* ✅ Update seeds.rb file

  geocode = Geocode.new(*****shop name*****)
  geocode.lookup
* Update shops show.html.haml file and add static maps
= image_tag "http://maps.googleapis.com/maps/api/staticmap?center=#{@shop.lat},#{@shop.lng}&markers=#{@shop.lat},#{@shop.lng}&zoom=7&size=640x400&key=AIzaSyA4BHW3txEdqfxzdTlPwaHsYRSZbfeIcd8", class: "map"
- - - -
## Side Notes

* API code can go in model or controller. Which one?
  - What THING (model/controller) in our system should ask google to get us the lat and log?
  - We're gonna pick the controller because the controller holds the action/methods the shop can perform. The downside to doing the api code in the model is "coupling". The more unrelated things you add to the model the harder it will be to work with the model and to perform testing.

*  The seed file should only contain data that is required for app to run. We are using the seed.rb file to hold sample data to see what our app would look like.
