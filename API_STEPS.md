* ✅ $ rails g migration AddLocationToShop lat:float lng:float
* ✅ rails db:migrate
  - now all shop will have lat and lng (latitude and longitude)
* ✅ Now we have to call the api
  - GEMFILE: gem 'httparty'
  - $ bundle
* It can go in model or controller. Which one?
  - What THING (model/controller) in our system should ask google to get us the lat and log?
  - We're gonna pick the controller because the controller holds the action/methods the shop can perform. The downside to doing the api code in the model is "coupling". The more unrelated things you add to the model the harder it will be to work with the model and to perform testing.
* Add API code info into a new model called Geocode (the process of making and address into geographical coordinates )
  - rails g model Geocode
    - add initialize method :
      def initialize(shop)
        @shop = shop
      end

      def lookup
        response = HTTParty.get("https://maps.googleapis.com/maps/api/geocode/json", { query: { address: @shop.address } })
        location = response["results"].map { |result| result["geometry"] }.map { |geometry| geometry["location"] }.first
        if location
          @shop.lat = location["lat"]
          @shop.lng = location["lng"]
          @shop.save
        end
      end
* Update shop_controller.rb
- shop_controller.rb:
  - Inside def create, after @shop = Shop.new(shop_params), we add

    Geocode.new(@shop).lookup

  - Inside def update, inside the if @shop.update(shop_params) but before redirect_to @shop, we add

    Geocode.new(@shop).lookup

* Update seeds.rb file


- - - -
## Side Note

*  The seed file should only contain data that is required for app to run. We are using the seed.rb file to hold sample data to see what our app would look like.
