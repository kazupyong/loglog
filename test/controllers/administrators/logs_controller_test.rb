require 'test_helper'

class AdministratorLogsControllerTest < ActionController::TestCase
  setup do
    @administrators_log = administrators_log(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:administrators_log)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create administrators_log" do
    assert_difference('AdministratorLog.count') do
      post :create, administrators_log: {  }
    end

    assert_redirected_to administrators_log_path(assigns(:administrators_log))
  end

  test "should show administrators_log" do
    get :show, id: @administrators_log
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @administrators_log
    assert_response :success
  end

  test "should update administrators_log" do
    patch :update, id: @administrators_log, administrators_log: {  }
    assert_redirected_to administrators_log_path(assigns(:administrators_log))
  end

  test "should destroy administrators_log" do
    assert_difference('AdministratorLog.count', -1) do
      delete :destroy, id: @administrators_log
    end

    assert_redirected_to administrators_log_path
  end
end
