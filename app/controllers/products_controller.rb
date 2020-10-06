class ProductsController < ApplicationController
    before_action :authenticate_user!


    def index
    end

    def new
        @product = Product.new
    end

    def create
        @product = Product.new(product_params)
        if @product.save
            redirect_to product_path(@product)
            flash[:notice] = "Product was successfully created!"
        else
            render 'new'
        end
    end

    def show
        @product = Product.find(params[:id])
    end

    private
    def product_params
      params.require(:product).permit(:name, :description, :price)
    end
end
