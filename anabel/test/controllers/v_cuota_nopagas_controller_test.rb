require 'test_helper'

class VCuotaNopagasControllerTest < ActionController::TestCase
  setup do
    @v_cuota_nopaga = v_cuota_nopagas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:v_cuota_nopagas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create v_cuota_nopaga" do
    assert_difference('VCuotaNopaga.count') do
      post :create, v_cuota_nopaga: {  }
    end

    assert_redirected_to v_cuota_nopaga_path(assigns(:v_cuota_nopaga))
  end

  test "should show v_cuota_nopaga" do
    get :show, id: @v_cuota_nopaga
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @v_cuota_nopaga
    assert_response :success
  end

  test "should update v_cuota_nopaga" do
    patch :update, id: @v_cuota_nopaga, v_cuota_nopaga: {  }
    assert_redirected_to v_cuota_nopaga_path(assigns(:v_cuota_nopaga))
  end

  test "should destroy v_cuota_nopaga" do
    assert_difference('VCuotaNopaga.count', -1) do
      delete :destroy, id: @v_cuota_nopaga
    end

    assert_redirected_to v_cuota_nopagas_path
  end
end
