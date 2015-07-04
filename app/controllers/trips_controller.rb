class TripsController < ApplicationController

  def index
    @user = current_user
    @trips = @user.trips
  end

  def show
    @trip = Trip.find(params[:id])
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(trip_params)
    @trip.user_id = current_user.id
    if @trip.save


      redirect_to trips_path
    else
      render :new
    end
  end

private

   def trip_params
     params.require(:trip).permit(:destination, :start_date, :end_date, :budget, :hours_per_day, :interest)
   end


end
