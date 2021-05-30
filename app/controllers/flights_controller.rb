class FlightsController < ApplicationController
  def index
    @flights = Flight.all 
  end

  def new
    @flight = Flight.new
  end

  def create
    @flight = 
  end 

  def show
  end

  def edit
  end

  def update
  end 

  def destroy
  end

  private 

  def flight_params
    params.require(:flight).permit(:depart_date, :return_date, :airline_id, :user_id)
  end 

end
