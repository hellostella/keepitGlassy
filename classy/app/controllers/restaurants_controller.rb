class RestaurantsController < ApplicationController

    def index
      @restaurants = Restaurant.all
      # render json: @restaurants
    end

    def show
      @restaurant = Restaurant.find(params[:id])
      # render json: @restaurants
    end
    #
    # def new
    #   @restaurant = Restaurant.new
    # end

    # def create
    #   @restaurant = Restaurant.new(params[:restaurant])
    #   if @restaurant.save
    #     redirect_to @restaurant, :notice => "Restaurant Created!"
    #   else
    #     render :action => 'new'
    #   end
    # end

    def edit
      @restaurant = Restaurant.find(params[:id])
    end

  end
