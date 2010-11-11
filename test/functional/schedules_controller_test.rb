require 'test_helper'

class SchedulesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:schedules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create schedule" do
    assert_difference('Schedule.count') do
      post :create, :schedule => { }
    end

    assert_redirected_to schedule_path(assigns(:schedule))
  end

  test "should show schedule" do
    get :show, :id => schedules(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => schedules(:one).id
    assert_response :success
  end

  test "should update schedule" do
    put :update, :id => schedules(:one).id, :schedule => { }
    assert_redirected_to schedule_path(assigns(:schedule))
  end

  test "should destroy schedule" do
    assert_difference('Schedule.count', -1) do
      delete :destroy, :id => schedules(:one).id
    end

    assert_redirected_to schedules_path
  end
end
