class StaticPagesController < ApplicationController
  def home
    art_count = Artwork.count
    art_offset = rand(art_count)
    @artwork = Artwork.offset(art_offset).first
    @rev_rand = Review.limit(3).order("Random()")
  end

  def gallery
    @artworks = Artwork.order(:id).page params[:page]
    @artwork = Artwork.create if logged_in?
  end

  def about
  end

  def contact
  end

  def reviews
    @reviews = Review.order(:id).page params[:page]
  end
end
