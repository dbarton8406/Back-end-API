class TreasurersController < ApplicationController

	def create
		@treasurer = Treasurer.new(living_space: params[:living_space],
															 username: params[:username],
															 email: params[:email], 
															 name: params[:name],
															 password: params[:password])
		if @treasurer.save
			render "create.json.jbuilder", status: :created
		else
			render json: {errors: @treasurer.errors.full_message },
			status: :unprocessable_entity
		end
	end
end
