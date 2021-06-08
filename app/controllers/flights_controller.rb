class FlightsController < ApplicationController
  def index
    if params[:airline_id]
      @airline = Airline.find_by(params[:airline_id])
      @flights = @Airline.flights
    else
      @flight = Flight.all
    end 
  end

  def new
    @flight = Flight.new
  end

  def create
    if params[:airline_id]
      @airline = Airline.find_by(params[:airline_id])
      @flight = @airline.flights.build(flight_params)
    if @flight.save 
      redirect_to airline_flights_path(@flight)
    else
      render :new
    end 
  else
      @flight = Flight.new(flight_params)
      if @flight.save
        redirect_to flights_path
      else
        render :new
      end
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
