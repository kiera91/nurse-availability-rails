require 'test_helper'

class NursesControllerTest < ActionController::TestCase
  setup do
    @nurse = nurses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nurses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nurse" do
    assert_difference('Nurse.count') do
      post :create, nurse: { authorized: @nurse.authorized, email_address: @nurse.email_address, full_name: @nurse.full_name, phone_number: @nurse.phone_number }
    end

    assert_redirected_to nurse_path(assigns(:nurse))
  end

  test "should show nurse" do
    get :show, id: @nurse
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nurse
    assert_response :success
  end

  test "should update nurse" do
    patch :update, id: @nurse, nurse: { authorized: @nurse.authorized, email_address: @nurse.email_address, full_name: @nurse.full_name, phone_number: @nurse.phone_number }
    assert_redirected_to nurse_path(assigns(:nurse))
  end

  test "should destroy nurse" do
    assert_difference('Nurse.count', -1) do
      delete :destroy, id: @nurse
    end

    assert_redirected_to nurses_path
  end
end
