require 'test_helper'

class VTurnoespecialsControllerTest < ActionController::TestCase
  setup do
    @v_turnoespecial = v_turnoespecials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:v_turnoespecials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create v_turnoespecial" do
    assert_difference('VTurnoespecial.count') do
      post :create, v_turnoespecial: {  }
    end

    assert_redirected_to v_turnoespecial_path(assigns(:v_turnoespecial))
  end

  test "should show v_turnoespecial" do
    get :show, id: @v_turnoespecial
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @v_turnoespecial
    assert_response :success
  end

  test "should update v_turnoespecial" do
    patch :update, id: @v_turnoespecial, v_turnoespecial: {  }
    assert_redirected_to v_turnoespecial_path(assigns(:v_turnoespecial))
  end

  test "should destroy v_turnoespecial" do
    assert_difference('VTurnoespecial.count', -1) do
      delete :destroy, id: @v_turnoespecial
    end

    assert_redirected_to v_turnoespecials_path
  end
end
