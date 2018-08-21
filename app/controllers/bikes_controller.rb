class BikesController < ApplicationController
	
	def index
		@bikes = Bike.all
	end

	def show
		@bike = Bike.find(params[:id])
	end

	def new
		@bike = Bike.new
	end

	def create
		@bike = Bike.create(bike_params)
		redirect_to bikes_path
	end

	def edit
		@bike = Bike.find(params[:id])
	end

	def update
		@bike = Bike.find(params[:id])
		@bike.update(bike_params)

		redirect_to @bike
	end


	private

	def bike_params
		params.require[:bike].permit(:make, :model, :year, :photo, :modification, :user_id, :type_id)
	end
end