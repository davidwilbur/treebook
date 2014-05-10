require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest
  test "that /login route opens the login page" do
  	get '/sign_in'
  	assert_response :success
  end

   test "that /logout route opens the logout page" do
  	get '/logout'
  	assert_response :redirect
  	assert_redirected_to '/'
  end

  test "that /sign_up route opens the sign up page" do
  	get '/sign_up'
  	assert_response :success
  end

  test "that a profile page works" do
    get '/jasonseifer'
    assert_response :success
  end
end
