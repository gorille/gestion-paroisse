require 'test_helper'

class MortsControllerTest < ActionController::TestCase
  setup do
    @mort = morts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:morts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mort" do
    assert_difference('Mort.count') do
      post :create, mort: { date_de_deces: @mort.date_de_deces, nom: @mort.nom, prenom: @mort.prenom }
    end

    assert_redirected_to mort_path(assigns(:mort))
  end

  test "should show mort" do
    get :show, id: @mort
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mort
    assert_response :success
  end

  test "should update mort" do
    patch :update, id: @mort, mort: { date_de_deces: @mort.date_de_deces, nom: @mort.nom, prenom: @mort.prenom }
    assert_redirected_to mort_path(assigns(:mort))
  end

  test "should destroy mort" do
    assert_difference('Mort.count', -1) do
      delete :destroy, id: @mort
    end

    assert_redirected_to morts_path
  end
end
