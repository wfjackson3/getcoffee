require 'test_helper'

class InviteStatusesControllerTest < ActionController::TestCase
  setup do
    @invite_status = invite_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:invite_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create invite_status" do
    assert_difference('InviteStatus.count') do
      post :create, invite_status: { status: @invite_status.status }
    end

    assert_redirected_to invite_status_path(assigns(:invite_status))
  end

  test "should show invite_status" do
    get :show, id: @invite_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @invite_status
    assert_response :success
  end

  test "should update invite_status" do
    put :update, id: @invite_status, invite_status: { status: @invite_status.status }
    assert_redirected_to invite_status_path(assigns(:invite_status))
  end

  test "should destroy invite_status" do
    assert_difference('InviteStatus.count', -1) do
      delete :destroy, id: @invite_status
    end

    assert_redirected_to invite_statuses_path
  end
end
