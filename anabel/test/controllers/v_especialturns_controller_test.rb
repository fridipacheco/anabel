require 'test_helper'

class VEspecialturnsControllerTest < ActionController::TestCase
  setup do
    @v_especialturn = v_especialturns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:v_especialturns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create v_especialturn" do
    assert_difference('VEspecialturn.count') do
      post :create, v_especialturn: {  }
    end

    assert_redirected_to v_especialturn_path(assigns(:v_especialturn))
  end

  test "should show v_especialturn" do
    get :show, id: @v_especialturn
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @v_especialturn
    assert_response :success
  end

  test "should update v_especialturn" do
    patch :update, id: @v_especialturn, v_especialturn: {  }
    assert_redirected_to v_especialturn_path(assigns(:v_especialturn))
  end

  test "should destroy v_especialturn" do
    assert_difference('VEspecialturn.count', -1) do
      delete :destroy, id: @v_especialturn
    end

    assert_redirected_to v_especialturns_path
  end
end
