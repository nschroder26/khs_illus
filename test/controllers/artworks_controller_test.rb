require "test_helper"

class ArtworksControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @artwork = artworks(:orange)
  end

  test "should not allow create unless logged in" do
    assert_no_difference 'Artwork.count' do
      post artworks_path, params: { artwork: { content: "Lorem ipsum"} }
    end
    assert_redirected_to login_url
  end

  test "should not allow destroy unless logged in" do
    assert_no_difference 'Artwork.count' do
      delete artwork_path(@artwork)
    end
    assert_redirected_to login_url
  end

end
