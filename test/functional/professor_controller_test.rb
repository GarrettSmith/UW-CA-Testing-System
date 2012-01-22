require 'test_helper'

class ProfessorControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get section" do
    get :section
    assert_response :success
  end

  test "should get test" do
    get :test
    assert_response :success
  end

  test "should get settings" do
    get :settings
    assert_response :success
  end

end
