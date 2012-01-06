require 'test_helper'

class StudentTestsControllerTest < ActionController::TestCase
  setup do
    @student_test = student_tests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_tests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_test" do
    assert_difference('StudentTest.count') do
      post :create, student_test: @student_test.attributes
    end

    assert_redirected_to student_test_path(assigns(:student_test))
  end

  test "should show student_test" do
    get :show, id: @student_test.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student_test.to_param
    assert_response :success
  end

  test "should update student_test" do
    put :update, id: @student_test.to_param, student_test: @student_test.attributes
    assert_redirected_to student_test_path(assigns(:student_test))
  end

  test "should destroy student_test" do
    assert_difference('StudentTest.count', -1) do
      delete :destroy, id: @student_test.to_param
    end

    assert_redirected_to student_tests_path
  end
end
