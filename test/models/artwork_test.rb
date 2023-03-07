require "test_helper"

class ArtworkTest < ActiveSupport::TestCase

  def setup
    @artwork = Artwork.new(title: "Sample Title", location: "Location", medium: "Medium")
  end

  test "should be valid" do
    assert @artwork.valid?
  end

  test "should be title" do
    @artwork.title = "    "
    assert_not @artwork.valid?
  end

end
