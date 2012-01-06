require 'test_helper'

class EnrolledStudentsControllerTest < ActionController::TestCase
  setup do
    @enrolled_student = enrolled_students(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:enrolled_students)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create enrolled_student" do
    assert_difference('EnrolledStudent.count') do
      post :create, enrolled_student: @enrolled_student.attributes
    end

    assert_redirected_to enrolled_student_path(assigns(:enrolled_student))
  end

  test "should show enrolled_student" do
    get :show, id: @enrolled_student.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @enrolled_student.to_param
    assert_response :success
  end

  test "should update enrolled_student" do
    put :update, id: @enrolled_student.to_param, enrolled_student: @enrolled_student.attributes
    assert_redirected_to enrolled_student_path(assigns(:enrolled_student))
  end

  test "should destroy enrolled_student" do
    assert_difference('EnrolledStudent.count', -1) do
      delete :destroy, id: @enrolled_student.to_param
    end

    assert_redirected_to enrolled_students_path
  end
end
