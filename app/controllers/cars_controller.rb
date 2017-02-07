class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id]) 
  end

  def new #form for the user to fill out 
    @car = Car.new 
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      redirect_to car_path(@car) 
    else 
      render :new 
    end
  end

  def edit
    @car = Car.find(params[:id])
  end

  def update
    @car = Car.find(params[:id])
    if @car.update(car_params)
      redirect_to car_path(@car)
    else
      render :edit 
    end 
  end

  def destroy
    @car = Car.find(params[:id])
    @car.destroy 
    redirect_to cars_path 
  end 

  private #cannot be called outside of this class 
   def car_params
     params.require(:car).permit(:make, :model, :year, :color, :runs)
   end 
   #security measure to only allow these in 
   #CRUD controller 
end
