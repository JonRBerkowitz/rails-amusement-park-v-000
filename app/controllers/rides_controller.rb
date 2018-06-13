class RidesController < ApplicationController

  def ride
    @ride = Ride.create(
    :user_id => params[:user_id],
    :attraction_id => params[:attraction_id]
    )
    @ride.take_ride
    redirect_to @current_user
  end

end
