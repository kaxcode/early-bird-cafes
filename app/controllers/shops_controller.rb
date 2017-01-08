class ShopsController < ApplicationController
  # GET /shops
  def index
    @shops = Shop.all
  end

  # GET /shops/1
  def show
    @shop = Shop.find(params[:id])
  end

  # GET /shops/new
  def new
    @shop = Shop.new
  end

  # GET /shops/1/edit
  def edit
    @shop = Shop.find(params[:id])
  end

  # POST /shops
  def create
    @shop = Shop.new(shop_params)

    if @shop.save
      redirect_to @shop, notice: 'Shop was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /shops/1
  def update
    @shop = Shop.find(params[:id])
    if @shop.update(shop_params)
      redirect_to @shop, notice: 'Shop was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /shops/1
  def destroy
    @shop = Shop.find(params[:id])
    @shop.destroy
    redirect_to shops_url, notice: 'Shop was successfully destroyed.'
  end

  private
    # Only allow a trusted parameter "white list" through.
    def shop_params
      params.require(:shop).permit(:name, :address, :website, :hours, :phone_number, :price, :user_id)
    end
end
