require 'test_helper'

class SectionTestsControllerTest < ActionController::TestCase
  setup do
    @section_test = section_tests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:section_tests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create section_test" do
    assert_difference('SectionTest.count') do
      post :create, section_test: @section_test.attributes
    end

    assert_redirected_to section_test_path(assigns(:section_test))
  end

  test "should show section_test" do
    get :show, id: @section_test.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @section_test.to_param
    assert_response :success
  end

  test "should update section_test" do
    put :update, id: @section_test.to_param, section_test: @section_test.attributes
    assert_redirected_to section_test_path(assigns(:section_test))
  end

  test "should destroy section_test" do
    assert_difference('SectionTest.count', -1) do
      delete :destroy, id: @section_test.to_param
    end

    assert_redirected_to section_tests_path
  end
end
