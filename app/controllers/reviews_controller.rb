class ReviewsController < ApplicationController
	before_action :logged_in_user, only: [:destroy]

	def create
		@review = Review.create(review_params)
		if @review.subtitle.length == 0
			if @review.save
				flash[:success] = "Review saved, thank you!"
				redirect_to root_url
			else
				flash[:error] = "We could not save your submission. Please try again"
				redirect_to root_url
			end
		else
			@review.destroy
			redirect_to root_url
		end
	end

	def destroy
		Review.find(params[:id]).destroy
		flash[:success] = "Review deleted"
		redirect_to reviews_url
	end

	private

		def review_params
			params.permit(:name, :content, :subtitle)
		end
end
