require 'test_helper'

class VVistaControllerTest < ActionController::TestCase
  setup do
    @v_vistum = v_vista(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:v_vista)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create v_vistum" do
    assert_difference('VVistum.count') do
      post :create, v_vistum: {  }
    end

    assert_redirected_to v_vistum_path(assigns(:v_vistum))
  end

  test "should show v_vistum" do
    get :show, id: @v_vistum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @v_vistum
    assert_response :success
  end

  test "should update v_vistum" do
    patch :update, id: @v_vistum, v_vistum: {  }
    assert_redirected_to v_vistum_path(assigns(:v_vistum))
  end

  test "should destroy v_vistum" do
    assert_difference('VVistum.count', -1) do
      delete :destroy, id: @v_vistum
    end

    assert_redirected_to v_vista_path
  end
end
