require "test_helper"

class ArtworkTest < ActiveSupport::TestCase

  def setup
    @artwork = Artwork.new(content: "Lorem ipsum", title: "Sample Title")
  end

  test "should be valid" do
    assert @artwork.valid?
  end
  
  test "should be content" do
    @artwork.content = "     "
    assert_not @artwork.valid?
  end

  test "should be title" do
    @artwork.title = "    "
    assert_not @artwork.valid?
  end

end
