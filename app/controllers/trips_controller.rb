class TripsController < ApplicationController

  def index
    @trips = Trip.all
  end

  def show
    @trip = Trip.find(params[:id])
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(trip_params)
  end

private

   def trip_params
     params.require(:trip).permit(:destination, :start_date, :end_date, :budget, :hours_per_day, :interest)
   end


end
