require 'test_helper'

class AlteAnalizesControllerTest < ActionController::TestCase
  setup do
    @alte_analize = alte_analizes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alte_analizes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create alte_analize" do
    assert_difference('AlteAnalize.count') do
      post :create, alte_analize: @alte_analize.attributes
    end

    assert_redirected_to alte_analize_path(assigns(:alte_analize))
  end

  test "should show alte_analize" do
    get :show, id: @alte_analize.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @alte_analize.to_param
    assert_response :success
  end

  test "should update alte_analize" do
    put :update, id: @alte_analize.to_param, alte_analize: @alte_analize.attributes
    assert_redirected_to alte_analize_path(assigns(:alte_analize))
  end

  test "should destroy alte_analize" do
    assert_difference('AlteAnalize.count', -1) do
      delete :destroy, id: @alte_analize.to_param
    end

    assert_redirected_to alte_analizes_path
  end
end
