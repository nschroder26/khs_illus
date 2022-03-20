class ArtworksController < ApplicationController
	before_action :logged_in_user, only: [:create, :update, :destroy]

	def create
		@artwork = Artwork.create(artwork_params)
		if @artwork.save
			flash[:success] = "Artwork saved!"
			redirect_to gallerymod_url
		else
			render 'static_pages/gallery'
		end
	end

	def update
		@artwork = Artwork.find_by(params[:id])
		if @artwork.update(artwork_params)
			flash[:success] = "Artwork order updated!"
			redirect_to gallerymod_url
		else
			redirect_to gallerymod_url
	end

	def destroy
		Artwork.find(params[:id]).destroy
		flash[:success] = "Artwork deleted"
		redirect_to gallerymod_url
	end

	private

		def artwork_params
			params.require(:artwork).permit(:title, :location, :medium, :image)
		end
end
