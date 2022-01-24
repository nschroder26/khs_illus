class StaticPagesController < ApplicationController
  def home
  end

  def gallery
    @artworks = Artwork.all
  end

  def about
  end

  def contact
  end
end
