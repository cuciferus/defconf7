require 'test_helper'

class RetetaControllerTest < ActionController::TestCase
  setup do
    @retetum = reteta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reteta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create retetum" do
    assert_difference('Retetum.count') do
      post :create, retetum: @retetum.attributes
    end

    assert_redirected_to retetum_path(assigns(:retetum))
  end

  test "should show retetum" do
    get :show, id: @retetum.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @retetum.to_param
    assert_response :success
  end

  test "should update retetum" do
    put :update, id: @retetum.to_param, retetum: @retetum.attributes
    assert_redirected_to retetum_path(assigns(:retetum))
  end

  test "should destroy retetum" do
    assert_difference('Retetum.count', -1) do
      delete :destroy, id: @retetum.to_param
    end

    assert_redirected_to reteta_path
  end
end
