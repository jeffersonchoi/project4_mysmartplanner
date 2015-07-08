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
      event_ids = Node.where(subfeature: @trip.interest)

      events = []
      event_ids.each do |e|
        events.push(e.id)
      end

      # if @trip.hours_per_day % 3 == 0
        no_of_itinerary = (@trip.hours_per_day / 3).floor
        for i in 1..no_of_itinerary
          @add_itinerary = Itinerary.new(trip_id: @trip.id)
          @add_itinerary.save

          if @add_itinerary.save

            @add_event = Event.new(itinerary_id: @add_itinerary.id, node_id: events.sample)

            @add_event.save
            # that_event_id = @add_event.node_id + 10
            # @add_event = Event.new(itinerary_id: @add_itinerary.id, node_id: that_event_id)


          end

        end

      # elsif @trip.hours_per_day % 3 == 1
      #   no_of_itinerary = @trip.hours_per_day / 3 + 1
      #   for i in 1..no_of_itinerary
      #     @add_itinerary = Itinerary.new(trip_id: @trip.id)
      #     @add_itinerary.save
      #   end
      # else
      #   no_of_itinerary = @trip.hours_per_day / 3 + 2
      #   for i in 1..no_of_itinerary
      #     @add_itinerary = Itinerary.new(trip_id: @trip.id)
      #     @add_itinerary.save
      #   end
      # end


      # puts @trip.inspect

      redirect_to trip_path(@trip)
    else
      render :new
    end
  end

private

   def trip_params
     params.require(:trip).permit(:destination, :start_date, :end_date, :budget, :hours_per_day, :interest)
   end


end
