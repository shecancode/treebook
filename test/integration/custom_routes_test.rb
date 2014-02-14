require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest
  test "that /signin route opens the signin page" do 
  	get '/signin'
  	assert_response :success
  end

  test "that /signout route opens the signout page" do 
  	get '/signout'
  	assert_response :redirect
  	assert_redirected_to '/'
  end

  test "that /signup route opens the signup page" do 
  	get '/signup'
  	assert_response :success
  end

  test "that a profile page works" do
    get '/crystalmeneses'
    assert_response :success
  end

end
