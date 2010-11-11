require 'test_helper'

class FdsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fd" do
    assert_difference('Fd.count') do
      post :create, :fd => { }
    end

    assert_redirected_to fd_path(assigns(:fd))
  end

  test "should show fd" do
    get :show, :id => fds(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => fds(:one).id
    assert_response :success
  end

  test "should update fd" do
    put :update, :id => fds(:one).id, :fd => { }
    assert_redirected_to fd_path(assigns(:fd))
  end

  test "should destroy fd" do
    assert_difference('Fd.count', -1) do
      delete :destroy, :id => fds(:one).id
    end

    assert_redirected_to fds_path
  end
end
