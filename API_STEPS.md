* ✅ $ rails g migration AddLocationToShop lat:float lng:float
* ✅ rails db:migrate
  - now all shop will have lat and lng (latitude and longitude)
* ✅ Now we have to call the api
  - GEMFILE: gem 'httparty'
  - $ bundle
* It can go in model or controller. Which one?
  - What THING (model/controller) in our system should ask google to get us the lat and log?
  - We're gonna pick the controller because the controller holds the action/methods the shop can perform. The downside to doing the api code in the model is "coupling". The more unrelated things you add to the model the harder it will be to work with the model and to perform testing.
  - shop_controller.rb: Inside def create, after @shop = Shop.new(shop_params), we add

    response = HTTParty.get("https://maps.googleapis.com/maps/api/geocode/json", { query: { address: @shop.address } })

    location = response["results"].map { |result| result["geometry"] }.map { |geometry| geometry["location"] }.first
    Add Comment

    if location
      @shop.lat = location["lat"]
      @shop.lng = location["lng"]
    end
* Add API code info into a new model
  - under models create geocode.rb
* Update seeds.rb file
* Update shop_controller.rb
  removed the previous code we added
  Inside def create, after @shop = Shop.new(shop_params), we add

    Geocode.new(@shop).lookup

  Inside def update, inside the if @shop.update(shop_params)

    Geocode.new(@shop).lookup


- - - -
## Side Note

*  The seed file should only contain data that is required for app to run. We are using the seed.rb file to hold sample data to see what our app would look like.
