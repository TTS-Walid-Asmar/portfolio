class CategoriesController < ApplicationController
    before_action :set_category, only: [:show]
     before_filter :authenticate_user!


  def index
      @categories = Category.all
  end

  def show
     @category = Category.find(params[:id])
  end

     private

    def set_category
        @category = Category.find(params[:id])
    end

    def event_params
        params.require(:category).permit(:name)
    end
end
