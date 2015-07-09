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

      @interest = Interest.new(interest_params)
      @interest.trip_id = @trip.id
      @interest.save



      events = []
      variables = ["theme_park", "museum", "beach", "shopping", "sight_landmark", "arean_stadium", "school"]
      variables.each do |variable|

        if @interest[variable] == true


          whatever = Node.where(subfeature: variable)

          whatever.each do |place|

            events.push(place.id)


          end
        else


        end
      end


          number_of_days = (@trip.end_date - @trip.start_date + 1).to_i

          start_time = Event.calculate_start_time(@trip.start_date, @trip.hours_per_day)

          for x in 1..number_of_days


                # if @trip.hours_per_day % 3 == 0
              no_of_itinerary = (@trip.hours_per_day / 3).floor
              for i in 1..no_of_itinerary
                @add_itinerary = Itinerary.new(trip_id: @trip.id)
                @add_itinerary.save

                if @add_itinerary.save



                  end_time = start_time + 3.hours

                  @add_event = Event.new(itinerary_id: @add_itinerary.id, node_id: events.sample, start_time: start_time, end_time: end_time)

                  events.delete_if{|b| b == @add_event.node_id}
                  @add_event.save

                  start_time = end_time

                  # that_event_id = @add_event.node_id + 10
                  # @add_event = Event.new(itinerary_id: @add_itinerary.id, node_id: that_event_id)
                end
              end

              start_time = start_time + (24 - @trip.hours_per_day).hours


          end

















      redirect_to trip_path(@trip)
    else
      render :new
    end
  end

private

   def trip_params
     params.require(:trip).permit(:destination, :start_date, :end_date, :budget, :hours_per_day)
   end

   def interest_params
     params.require(:interest).permit(:theme_park, :museum, :beach, :shopping, :sight_landmark, :arean_stadium, :school)
   end


end
