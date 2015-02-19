require 'test_helper'

class DonnateursControllerTest < ActionController::TestCase
  setup do
    @donnateur = donnateurs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:donnateurs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create donnateur" do
    assert_difference('Donnateur.count') do
      post :create, donnateur: { adresse_1: @donnateur.adresse_1, adresse_2: @donnateur.adresse_2, code_postal: @donnateur.code_postal, nom: @donnateur.nom, prenom: @donnateur.prenom, telephone: @donnateur.telephone, ville: @donnateur.ville }
    end

    assert_redirected_to donnateur_path(assigns(:donnateur))
  end

  test "should show donnateur" do
    get :show, id: @donnateur
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @donnateur
    assert_response :success
  end

  test "should update donnateur" do
    patch :update, id: @donnateur, donnateur: { adresse_1: @donnateur.adresse_1, adresse_2: @donnateur.adresse_2, code_postal: @donnateur.code_postal, nom: @donnateur.nom, prenom: @donnateur.prenom, telephone: @donnateur.telephone, ville: @donnateur.ville }
    assert_redirected_to donnateur_path(assigns(:donnateur))
  end

  test "should destroy donnateur" do
    assert_difference('Donnateur.count', -1) do
      delete :destroy, id: @donnateur
    end

    assert_redirected_to donnateurs_path
  end
end
