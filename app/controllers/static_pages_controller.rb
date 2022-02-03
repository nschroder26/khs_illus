class StaticPagesController < ApplicationController
  def home
    art_count = Artwork.count
    art_offset = rand(art_count)
    @artwork = Artwork.offset(art_offset).first
    @rev_rand = Review.limit(3).order("Random()")
  end

  def gallery
    @artworks = Artwork.page(params[:page]).per(2)
    @artwork = Artwork.create if logged_in?
  end

  def about
  end

  def contact
  end

  def reviews
    @reviews = Review.all
  end
end
