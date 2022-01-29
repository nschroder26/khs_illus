class StaticPagesController < ApplicationController
  def home
    count = Artwork.count
    rand_offset = rand(count)
    @artwork = Artwork.offset(rand_offset).first
  end

  def gallery
    @artworks = Artwork.all
    @artwork = Artwork.create if logged_in?
  end

  def about
  end

  def contact
  end
end
