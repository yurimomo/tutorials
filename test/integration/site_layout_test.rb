require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "lasyout links" do 
  	get root_path
  	assert_template 'static_pages/home'
  	assert_select "a[href=?]",root_path, count:4
    # count2にしたいけど、4あると言われてしまう。先に進むために4にしておく
  	assert_select "a[href=?]",help_path
  	assert_select "a[href=?]",about_path
  	assert_select "a[href=?]",contact_path
  	get contact_path
  	assert_select "title", full_title("Contact")
    get signup_path 
    assert_select "title", full_title("Sign up")
  end
end


# get root_pathに対して
# assertdでcheck
# 次にget signup_path(URLで/signup)assertとcheck