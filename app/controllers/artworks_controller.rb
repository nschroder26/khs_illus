class ArtworksController < ApplicationController
	before_action :logged_in_user, only: [:create, :destroy]

	def create
		@artworks = artworks.build(artworks_params)
		if @artworks.save
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
