class CartsController < ApplicationController

  def index 
    @carts = Cart.all 
  end

  def show 
    @cart = Cart.find(params[:id])
  end

  def new 
    @cart = Cart.new
  end

  def cart
    @cart = Cart.new(product_id: params[:id], merchant_id: current_merchant.id, count: 1)
    @cart.save!
    redirect_to products_path, notice: 'Added to Cart'
  end

  def destroy
    @cart = Cart.find(params[:id])
    @cart.destroy
    redirect_to carts_path 
  end
                         
  private

    def cart_params
      params.require(:cart).permit(:count, :product_id, :merchant_id)
    end

end