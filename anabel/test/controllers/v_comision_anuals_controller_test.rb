require 'test_helper'

class VComisionAnualsControllerTest < ActionController::TestCase
  setup do
    @v_comision_anual = v_comision_anuals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:v_comision_anuals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create v_comision_anual" do
    assert_difference('VComisionAnual.count') do
      post :create, v_comision_anual: {  }
    end

    assert_redirected_to v_comision_anual_path(assigns(:v_comision_anual))
  end

  test "should show v_comision_anual" do
    get :show, id: @v_comision_anual
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @v_comision_anual
    assert_response :success
  end

  test "should update v_comision_anual" do
    patch :update, id: @v_comision_anual, v_comision_anual: {  }
    assert_redirected_to v_comision_anual_path(assigns(:v_comision_anual))
  end

  test "should destroy v_comision_anual" do
    assert_difference('VComisionAnual.count', -1) do
      delete :destroy, id: @v_comision_anual
    end

    assert_redirected_to v_comision_anuals_path
  end
end
