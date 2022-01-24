class StaticPagesController < ApplicationController
  def home
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
