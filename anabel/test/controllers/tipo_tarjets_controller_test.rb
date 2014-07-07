require 'test_helper'

class TipoTarjetsControllerTest < ActionController::TestCase
  setup do
    @tipo_tarjet = tipo_tarjets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_tarjets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_tarjet" do
    assert_difference('TipoTarjet.count') do
      post :create, tipo_tarjet: { tta_descripcion: @tipo_tarjet.tta_descripcion }
    end

    assert_redirected_to tipo_tarjet_path(assigns(:tipo_tarjet))
  end

  test "should show tipo_tarjet" do
    get :show, id: @tipo_tarjet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_tarjet
    assert_response :success
  end

  test "should update tipo_tarjet" do
    patch :update, id: @tipo_tarjet, tipo_tarjet: { tta_descripcion: @tipo_tarjet.tta_descripcion }
    assert_redirected_to tipo_tarjet_path(assigns(:tipo_tarjet))
  end

  test "should destroy tipo_tarjet" do
    assert_difference('TipoTarjet.count', -1) do
      delete :destroy, id: @tipo_tarjet
    end

    assert_redirected_to tipo_tarjets_path
  end
end
