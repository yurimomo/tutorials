require 'test_helper'

class UsersProfileTest < ActionDispatch::IntegrationTest
	include ApplicationHelper

	def setup
		@user = users(:michael)
	end

	test "profile display" do
		get user_path(@user)
		assert_template 'users/show'
		assert_select 'title', full_title(@user.name)
		# test_profile_display", UsersProfileTest, 8.081804999965243]
 # test_profile_display#UsersProfileTest (8.08s)
 #        <Michael Example> expected but was
 #        <Michael Example
 #        				michael@example.com>..
 #        Expected 0 to be >= 1.
 #        test/integration/users_profile_test.rb:14:in `block in <class:UsersProfileTest>'


		assert_select 'h1', text: @user.name
		assert_select 'h1>img.gravatar'
		assert_match @user.microposts.count.to_s, response.body
		assert_select 'div.pagination'
		@user.microposts.paginate(page: 1).each do |micropost|
			assert_match micropost.content, response.body
		end
	end
		  # test "the truth" do
  #   assert true
  # end
end
