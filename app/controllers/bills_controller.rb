class BillsController < ApplicationController


	def create
		
		@bill = current_user.bills.new(name: params[:name], 
										 total_balance: params[:total_balance],
										 your_balance: params[:your_balance],
										 company: params[:company], assignee: params[:assignee],
										 due_date: params[:due_date])
			if @bill.save
				render "t_create.json.jbuilder"
			else
				render json: {errors: @bill.errors.full_message },
				status: :unprocessable_entity
			end
		end
end
