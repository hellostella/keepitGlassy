class LocationsController < ApplicationController

    def index
      @locations = Location.all
    end

    def show
      @location = Location.find(params[:id])
      respond_to do |format|
        format.html { render :show }
        format.json { render json: @location }
      end
    end
    #
    # def new
    #   @location = Location.new
    # end

    # def create
    #   @location = Location.new(params[:location])
    #   if @location.save
    #     redirect_to @location, :notice => "Location Created!"
    #   else
    #     render :action => 'new'
    #   end
    # end

    def edit
      @location = Location.find(params[:id])
      respond_to do |format|
        format.html { render :show }
        format.json { render json: @location }
    end
  end



# class LocationsController < ApplicationController
#
#     def index
#     if params[:search].present?
#       @locations = Location.near(params[:search])
#     else
#       @locations = Location.all
#     end
#
#     def show
#       @location = Location.find(params[:id])
#     end
#
#     def new
#       @location = Location.new
#     end
#
#     def create
#       @location = Location.new(params[:location])
#       if @location.save
#         redirect_to @location, :notice => "Location Created!"
#       else
#         render :action => 'new'
#       end
#     end
#
#     def edit
#       @location = Location.find(params[:id])
#     end
#
#   end
# end
end
