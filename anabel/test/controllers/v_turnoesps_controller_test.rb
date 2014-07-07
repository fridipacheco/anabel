require 'test_helper'

class VTurnoespsControllerTest < ActionController::TestCase
  setup do
    @v_turnoesp = v_turnoesps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:v_turnoesps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create v_turnoesp" do
    assert_difference('VTurnoesp.count') do
      post :create, v_turnoesp: {  }
    end

    assert_redirected_to v_turnoesp_path(assigns(:v_turnoesp))
  end

  test "should show v_turnoesp" do
    get :show, id: @v_turnoesp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @v_turnoesp
    assert_response :success
  end

  test "should update v_turnoesp" do
    patch :update, id: @v_turnoesp, v_turnoesp: {  }
    assert_redirected_to v_turnoesp_path(assigns(:v_turnoesp))
  end

  test "should destroy v_turnoesp" do
    assert_difference('VTurnoesp.count', -1) do
      delete :destroy, id: @v_turnoesp
    end

    assert_redirected_to v_turnoesps_path
  end
end
