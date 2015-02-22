require 'test_helper'

class ClochersControllerTest < ActionController::TestCase
  setup do
    @clocher = clochers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clochers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clocher" do
    assert_difference('Clocher.count') do
      post :create, clocher: {  }
    end

    assert_redirected_to clocher_path(assigns(:clocher))
  end

  test "should show clocher" do
    get :show, id: @clocher
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clocher
    assert_response :success
  end

  test "should update clocher" do
    patch :update, id: @clocher, clocher: {  }
    assert_redirected_to clocher_path(assigns(:clocher))
  end

  test "should destroy clocher" do
    assert_difference('Clocher.count', -1) do
      delete :destroy, id: @clocher
    end

    assert_redirected_to clochers_path
  end
end
