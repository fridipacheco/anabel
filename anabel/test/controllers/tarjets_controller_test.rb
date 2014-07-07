require 'test_helper'

class TarjetsControllerTest < ActionController::TestCase
  setup do
    @tarjet = tarjets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tarjets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tarjet" do
    assert_difference('Tarjet.count') do
      post :create, tarjet: { tar_cobro: @tarjet.tar_cobro, tar_estado: @tarjet.tar_estado, tar_expira: @tarjet.tar_expira, tar_serie: @tarjet.tar_serie, tar_verificador: @tarjet.tar_verificador }
    end

    assert_redirected_to tarjet_path(assigns(:tarjet))
  end

  test "should show tarjet" do
    get :show, id: @tarjet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tarjet
    assert_response :success
  end

  test "should update tarjet" do
    patch :update, id: @tarjet, tarjet: { tar_cobro: @tarjet.tar_cobro, tar_estado: @tarjet.tar_estado, tar_expira: @tarjet.tar_expira, tar_serie: @tarjet.tar_serie, tar_verificador: @tarjet.tar_verificador }
    assert_redirected_to tarjet_path(assigns(:tarjet))
  end

  test "should destroy tarjet" do
    assert_difference('Tarjet.count', -1) do
      delete :destroy, id: @tarjet
    end

    assert_redirected_to tarjets_path
  end
end
