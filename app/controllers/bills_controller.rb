class BillsController < ApplicationController
	def roomate
		@bill = Bill.new(name: params[:name], 
										 total_balance: params[:total_balance],
										 your_balance: params[:your_balance],
										 company: params[:company], roomate_id: params[:roomate_id],
										 due_date: params[:due_date])
			if @bill.save
				render "create.json.jbuilder"
			else
				render json: {errors: @bill.errors.full_message },
				status: :unprocessable_entity
			end
	end

	def treasurer
		@bill = Bill.new(name: params[:name], 
										 total_balance: params[:total_balance],
										 your_balance: params[:your_balance],
										 company: params[:company], treasurer_id: params[:roomate_id],
										 due_date: params[:due_date])
			if @bill.save
				render "t_create.json.jbuilder"
			else
				render json: {errors: @bill.errors.full_message },
				status: :unprocessable_entity
			end
		end
end
