require 'test_helper'

class Survey1sControllerTest < ActionController::TestCase
  setup do
    @survey1 = survey1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:survey1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create survey1" do
    assert_difference('Survey1.count') do
      post :create, survey1: { option1: @survey1.option1, option2: @survey1.option2, pic1: @survey1.pic1, pic2: @survey1.pic2, question: @survey1.question, time: @survey1.time, title: @survey1.title }
    end

    assert_redirected_to survey1_path(assigns(:survey1))
  end

  test "should show survey1" do
    get :show, id: @survey1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @survey1
    assert_response :success
  end

  test "should update survey1" do
    put :update, id: @survey1, survey1: { option1: @survey1.option1, option2: @survey1.option2, pic1: @survey1.pic1, pic2: @survey1.pic2, question: @survey1.question, time: @survey1.time, title: @survey1.title }
    assert_redirected_to survey1_path(assigns(:survey1))
  end

  test "should destroy survey1" do
    assert_difference('Survey1.count', -1) do
      delete :destroy, id: @survey1
    end

    assert_redirected_to survey1s_path
  end
end
