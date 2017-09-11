class ExpensesController < ApplicationController
	def index # /trips/:trip_id/expenses
		@expenses = Trip.find(params[:trip_id]).expenses
		if @expenses
			render json: @expenses.to_json
		else
			@error = "Error: No expenses found"
			render json: @error.to_json
		end
	end

	def create # /trips/:trip_id/expenses

	end

	# def edit
	# end

	# def show
	# end

	# def update
	# end

	# def destroy
	# end
end
