require 'test_helper'

class ParoissesControllerTest < ActionController::TestCase
  setup do
    @paroiss = paroisses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:paroisses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create paroiss" do
    assert_difference('Paroisse.count') do
      post :create, paroiss: { nom: @paroiss.nom }
    end

    assert_redirected_to paroiss_path(assigns(:paroiss))
  end

  test "should show paroiss" do
    get :show, id: @paroiss
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @paroiss
    assert_response :success
  end

  test "should update paroiss" do
    patch :update, id: @paroiss, paroiss: { nom: @paroiss.nom }
    assert_redirected_to paroiss_path(assigns(:paroiss))
  end

  test "should destroy paroiss" do
    assert_difference('Paroisse.count', -1) do
      delete :destroy, id: @paroiss
    end

    assert_redirected_to paroisses_path
  end
end
