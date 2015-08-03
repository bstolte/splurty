class QuotesController < ApplicationController
	def index
		@quote = Quote.order("RANDOM()").first
	end

	def new
		@quote = Quote.new
	end

	def create
		@quote = Quote.create(quote_params)
		if @quote.invalid?
			flash[:error] = '<strong>Could not save!</strong> Only long guitar solos allowed, keep the quotes to 3 to 140 characters and the author to 3 to 50 characters.'
		end
		redirect_to root_path
	end

	def about
		
	end

	private

	def quote_params
		params.require(:quote).permit(:saying, :author)
	end
end
