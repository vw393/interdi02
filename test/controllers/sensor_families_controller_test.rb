require 'test_helper'

class SensorFamiliesControllerTest < ActionController::TestCase
  setup do
    @sensor_family = sensor_families(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sensor_families)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sensor_family" do
    assert_difference('SensorFamily.count') do
      post :create, sensor_family: { descr: @sensor_family.descr, name: @sensor_family.name, technology_id: @sensor_family.technology_id }
    end

    assert_redirected_to sensor_family_path(assigns(:sensor_family))
  end

  test "should show sensor_family" do
    get :show, id: @sensor_family
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sensor_family
    assert_response :success
  end

  test "should update sensor_family" do
    patch :update, id: @sensor_family, sensor_family: { descr: @sensor_family.descr, name: @sensor_family.name, technology_id: @sensor_family.technology_id }
    assert_redirected_to sensor_family_path(assigns(:sensor_family))
  end

  test "should destroy sensor_family" do
    assert_difference('SensorFamily.count', -1) do
      delete :destroy, id: @sensor_family
    end

    assert_redirected_to sensor_families_path
  end
end
