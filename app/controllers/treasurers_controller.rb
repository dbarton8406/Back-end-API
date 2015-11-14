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

	def login
		@treasurer = Treasurer.find_by(username: params[:username])
		if @treasurer && @treasurer.authenticate(params[:password])
			render "login.json.jbuilder", status: :ok
		else
			render json: {error: "Could not find user for #{params[:username]} or wrong password." },
			status: :unauthorized
		end
	end
end
