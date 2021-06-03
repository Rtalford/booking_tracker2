class FlightsController < ApplicationController
  def index
    if params[:airline_id]
      @airline = airline.findy_by(params[:airlines])
      @flights = @airline.flights
    else
      @flights = flights.all
    end 
  end

  def new
    @flight = Flight.new
  end

  def create
    @flight = Flight.new(flight_params)
    if @flight.save 
      redirect_to flight_path(@flight)
    else
      render :new
    end 
  end 

  def show
    @flight = Flight.find_by_id(params[:id])
  end

  def edit
    @flight = Flight.find_by_id(params[:id])
  end

  def update
    @flight = Flight.find_by_id(params[:id])
    @flight.update(params[:flight])
  end 

  def destroy
    @flight = Flight.find_by_id(params[:id])
    @flight.delete 
    redirect_to flights_path
  end

private 

  def flight_params
    params.require(:flight).permit(:depart_date, :return_date, :airline_id, :user_id)
  end 

end
