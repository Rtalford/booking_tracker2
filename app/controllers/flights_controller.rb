class FlightsController < ApplicationController
  def index
    @flights = Flight.all 
  end

  def new
    @flights = Flight.new
  end

  def create
  end 

  def show
  end

  def edit
  end

  def update
  end 

  def destroy
  end

end
