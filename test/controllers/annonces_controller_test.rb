require 'test_helper'

class AnnoncesControllerTest < ActionController::TestCase
  setup do
    @annonce = annonces(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:annonces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create annonce" do
    assert_difference('Annonce.count') do
      post :create, annonce: { boite_vitesse: @annonce.boite_vitesse, carburant: @annonce.carburant, couleur: @annonce.couleur, description: @annonce.description, marque: @annonce.marque, model_year: @annonce.model_year, modele: @annonce.modele, price: @annonce.price }
    end

    assert_redirected_to annonce_path(assigns(:annonce))
  end

  test "should show annonce" do
    get :show, id: @annonce
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @annonce
    assert_response :success
  end

  test "should update annonce" do
    patch :update, id: @annonce, annonce: { boite_vitesse: @annonce.boite_vitesse, carburant: @annonce.carburant, couleur: @annonce.couleur, description: @annonce.description, marque: @annonce.marque, model_year: @annonce.model_year, modele: @annonce.modele, price: @annonce.price }
    assert_redirected_to annonce_path(assigns(:annonce))
  end

  test "should destroy annonce" do
    assert_difference('Annonce.count', -1) do
      delete :destroy, id: @annonce
    end

    assert_redirected_to annonces_path
  end
end
