class ArtworksController < ApplicationController
	before_action :logged_in_user, only: [:create, :destroy]

	def create
		@artwork = Artwork.create(artwork_params)
		if @artwork.save
			flash[:success] = "Artwork saved!"
			redirect_to gallery_url
		else
			render 'static_pages/gallery'
		end
	end

	def destroy
	end

	private

		def artwork_params
			params.require(:artwork).permit(:title, :content)
		end
end
