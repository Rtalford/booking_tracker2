class AirlinesController < ApplicationController
    def index
        @airlines = Airline.all
      end
    
      def new
        @airline = Airline.new
      end
    
      def create
        @airline = airline.new(user_airline)
        if @airline.save
          redirect_to airlines_path(@airline)
        else 
          render :new
        end 
      end
    
      def show
        @airline = Airline.find_by_id(params[:id])
      end
    
      def edit
        @airline = Airline.find_by_id(params[:id])
      end
    
      def update
        @airline = airline.find(params[:id])
        if @airline.update(params)
          redirect_to airline_path
        else
          render :edit
        end 
      end
    
      def destroy
        @airline = Airline.find_by_id(params[:id])
        @airline.delete 
        redirect_to airline_path
      end
    
      
      private 
    
      def airline_params
        params.require(:airline).permit(:name)
      end 
end
