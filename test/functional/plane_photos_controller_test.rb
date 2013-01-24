require 'test_helper'

class PlanePhotosControllerTest < ActionController::TestCase
  setup do
    @plane_photo = plane_photos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:plane_photos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create plane_photo" do
    assert_difference('PlanePhoto.count') do
      post :create, plane_photo: @plane_photo.attributes
    end

    assert_redirected_to plane_photo_path(assigns(:plane_photo))
  end

  test "should show plane_photo" do
    get :show, id: @plane_photo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @plane_photo
    assert_response :success
  end

  test "should update plane_photo" do
    put :update, id: @plane_photo, plane_photo: @plane_photo.attributes
    assert_redirected_to plane_photo_path(assigns(:plane_photo))
  end

  test "should destroy plane_photo" do
    assert_difference('PlanePhoto.count', -1) do
      delete :destroy, id: @plane_photo
    end

    assert_redirected_to plane_photos_path
  end
end
