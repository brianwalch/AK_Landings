require 'test_helper'

class FaafacilitiesControllerTest < ActionController::TestCase
  setup do
    @faafacility = faafacilities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:faafacilities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create faafacility" do
    assert_difference('Faafacility.count') do
      post :create, faafacility: @faafacility.attributes
    end

    assert_redirected_to faafacility_path(assigns(:faafacility))
  end

  test "should show faafacility" do
    get :show, id: @faafacility
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @faafacility
    assert_response :success
  end

  test "should update faafacility" do
    put :update, id: @faafacility, faafacility: @faafacility.attributes
    assert_redirected_to faafacility_path(assigns(:faafacility))
  end

  test "should destroy faafacility" do
    assert_difference('Faafacility.count', -1) do
      delete :destroy, id: @faafacility
    end

    assert_redirected_to faafacilities_path
  end
end
