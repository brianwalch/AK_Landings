require 'test_helper'

class TripPhotosControllerTest < ActionController::TestCase
  setup do
    @trip_photo = trip_photos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trip_photos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trip_photo" do
    assert_difference('TripPhoto.count') do
      post :create, trip_photo: @trip_photo.attributes
    end

    assert_redirected_to trip_photo_path(assigns(:trip_photo))
  end

  test "should show trip_photo" do
    get :show, id: @trip_photo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trip_photo
    assert_response :success
  end

  test "should update trip_photo" do
    put :update, id: @trip_photo, trip_photo: @trip_photo.attributes
    assert_redirected_to trip_photo_path(assigns(:trip_photo))
  end

  test "should destroy trip_photo" do
    assert_difference('TripPhoto.count', -1) do
      delete :destroy, id: @trip_photo
    end

    assert_redirected_to trip_photos_path
  end
end
