class ClassifiedsController < ApplicationController

    def index
        @classifieds = Classified.all
        render json: @classifieds
      end
      
    def show
        render json: Classified.find(params[:id])
    end
end
