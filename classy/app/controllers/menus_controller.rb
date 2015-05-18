class MenusController < ApplicationController
  def index
    if restaurant_id = params[:restaurant_id]
      @menus = Restaurant.find(restaurant_id).menus
    else
      @menus = Menus.all
    end
    respond_to do |format|
      format.html { render :index }
      format.json { render json: @menus }
    end
  end

  def show
    @menus = Menu.find(params[:id])
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @restaurant}
    end
  end















end
