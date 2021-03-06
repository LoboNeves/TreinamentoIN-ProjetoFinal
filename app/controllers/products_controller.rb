class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :update, :destroy]

  # GET /products
  def index
    if params[:search] #Sistema de busca de produtos
      @products = Product.search(params[:search])

    else
      @products = Product.all

      render json: @products
    end
  end

  def category_search #Busca por categoria
    @products = Product.category_search(params[:search])
  end

  def filter_price #Sistema de filtro de preço
    @products = Product.filter(params[:filter])
  end

  # GET /products/1
  def show
    render json: @product
  end

  # POST /products
  def create
    @product = Product.new(product_params)

    if @product.save
      render json: @product, status: :created, location: @product
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /products/1
  def update
    if @product.update(product_params)
      render json: @product
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  # DELETE /products/1
  def destroy
    @product.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def product_params
      params.require(:product).permit(:like, :image, :name, :price, :description, :category)
    end
end
