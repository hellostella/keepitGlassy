class RestaurantsController < ApplicationController

    def index
      if location_id = params[:location_id]
        @restaurants = Location.find(location_id).restaurants
      else
        @restaurants = Restaurant.all
      end
      respond_to do |format|
        format.html { render :index }
        format.json { render json: @restaurants }
      end
    end

    def show
      @restaurant = Restaurant.find(params[:id])
      respond_to do |format|
        format.html { render :show }
        format.json { render json: @location }
      end
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
