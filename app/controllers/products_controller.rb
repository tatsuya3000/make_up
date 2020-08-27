class ProductsController < ApplicationController
    
    def index
        @products = Product.all
    end
    
    def show
        @products = Product.find(params[:id])
    end
    
    def search
        @foundation = Product.where("type1", "%#{params[:type1]}%")
        @eye_ = Product.where("taste1", "%#{params[:taste1]}%")
    end
    
    private
    def produdt_params
        params.permit(:name, :image_url, :feature, :method)
    end
    
end
