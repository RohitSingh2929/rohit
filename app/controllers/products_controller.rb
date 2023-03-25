class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def show
    @product = Product.find(params[:id])
end

def edit
  @product = Product.find(params[:id])
end

def create
  @product = Product.new(product_params)

  if @product.save
    redirect_to @product
  else
    render :new, status: :unprocessable_entity
  end
end


def destroy
  @product = Product.find(params[:id])
  @product.destroy
  redirect_to products_url, notice: 'Product was successfully destroyed.'
end

def update
  @product = Product.find(params[:id])

  if @product.update(product_params)
    redirect_to @product, notice: 'Product was successfully updated.'
  else
    render :edit
  end
end
  private
    def set_product
      @product = Product.find(params[:id])
    end


    def product_params
      params.require(:product).permit(:name, :description, :price, :status, :category_id)
    end
end