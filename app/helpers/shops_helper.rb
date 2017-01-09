module ShopsHelper
  def price_as_symbol(price)
    if price.nil? || price <= 0
      "NA"
    else
      "$" * [price, 5].min
    end
  end
end
