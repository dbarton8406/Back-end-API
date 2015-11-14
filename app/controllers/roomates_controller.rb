class RoomatesController < ApplicationController

	def create
		
		@roomate = current_user.roomates.new(living_space: params[:living_space],
															 username: params[:username],
															 email: params[:email], 
															 name: params[:name],
															 password: params[:password],
															 treasurer_id: params[:treasurer_id])
		if @roomate.save
			render "create.json.jbuilder", status: :created
		else
			render json: {errors: @roomate.errors.full_message },
			status: :unprocessable_entity
		end
	end
end



