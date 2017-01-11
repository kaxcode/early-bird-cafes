class Geocode < ApplicationRecord
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
end
