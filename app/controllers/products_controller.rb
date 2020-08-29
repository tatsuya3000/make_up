class ProductsController < ApplicationController
    
    def index
        @products = Product.all
    end
    
    def show
        @products = Product.find(params[:id])
    end
    
    def search
        @foundations = Product.where(type1: params[:type1], type2: params[:type2],taste1: params[:taste1], taste2: params[:taste2], glitter: "", scene1: "", scene2: "", category: "foundation")        
        @eye_makes = Product.where(type1: "", type2: "",taste1: params[:taste1], taste2: params[:taste2], glitter: params[:glitter], scene1: params[:scene1], scene2: params[:scene2], category: "eye_make")        
        @cheeks = Product.where(type1: "", type2: "",taste1: params[:taste1], taste2: params[:taste2], glitter: params[:glitter], scene1: params[:scene1], scene2: params[:scene2], category: "cheek")
        @lips = Product.where(type1: "", type2: "",taste1: params[:taste1], taste2: params[:taste2], glitter: params[:glitter], scene1: params[:scene1], scene2: params[:scene2], category: "lip")
    end
    
    private
    def produdt_params
        params.permit(:name, :image_url, :feature, :method)
    end
    
end


