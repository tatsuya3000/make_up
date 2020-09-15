class CosmeticsController < ApplicationController
    
    before_action :move_to_index
    
    def index
        @cosmetics = Cosmetic.all.order("created_at DESC").page(params[:page]).per(5)
    end
    
    def show
        @cosmetics = Cosmetic.find(params[:id])
    end
    
    def new
        @cosmetic = Cosmetic.new
    end
    
    def create
       
        Cosmetic.create(cosmetic_params)
        # トップページにリダイレクトする
        # redirect_to controller: :tops,  action: :index
    end
    
    private
    def cosmetic_params
        params.require(:cosmetic).permit(:name, :image, :category, :review).merge(user_id: current_user.id)
    end
    
    def move_to_index
        redirect_to root_path unless user_signed_in?
    end
end
