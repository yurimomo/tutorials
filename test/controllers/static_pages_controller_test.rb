require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
  end
  test "should get root" do
    get root_path
    assert_response :success
    assert_select "title", "Ruby on Rails Tutorial Sample App"
  end

  # test "should get home" do
  #   get static_pages_home_url
  #   assert_response :success
  #   assert_select "title", "Home|Ruby on Rails Tutorial Sample App"
  # end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Help|Ruby on Rails Tutorial Sample App"

  end

  test "shold get about" do
  	get about_path
  	assert_response :success
    assert_select "title", "About|Ruby on Rails Tutorial Sample App"
  end

  test "shold get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact|Ruby on Rails Tutorial Sample App"
  end
end
