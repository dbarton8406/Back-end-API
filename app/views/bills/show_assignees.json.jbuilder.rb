class BillsController < ApplicationController

	def index
		@bills = Bill.where(treasurer_id: params[:treasurer_id])

		render "index.json.jbuilder"
	end
	
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

		def assignee
			@bill = Bill.where(assignee: params[:assignee])
			render "search.json.jbuilder"
		end

		def show
			@bills = Bill.find_by(id: params[:id])
			render "show_bill.json.jbuilder"
		end

		def update
			bill = Bill.where(id: params[:id])
			bill.update( 
									 your_balance: params[:your_balance],
									 company: params[:company],
									 treasurer_id: params[:treasures],
									 due_date: params[:due_date], paid: params[:paid],
									 assignee: params[:assignee])
		end

end






