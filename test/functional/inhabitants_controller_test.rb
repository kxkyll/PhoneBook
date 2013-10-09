require 'test_helper'

class InhabitantsControllerTest < ActionController::TestCase
  setup do
    @inhabitant = inhabitants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inhabitants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inhabitant" do
    assert_difference('Inhabitant.count') do
      post :create, inhabitant: { address_id: @inhabitant.address_id, person_id: @inhabitant.person_id }
    end

    assert_redirected_to inhabitant_path(assigns(:inhabitant))
  end

  test "should show inhabitant" do
    get :show, id: @inhabitant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @inhabitant
    assert_response :success
  end

  test "should update inhabitant" do
    put :update, id: @inhabitant, inhabitant: { address_id: @inhabitant.address_id, person_id: @inhabitant.person_id }
    assert_redirected_to inhabitant_path(assigns(:inhabitant))
  end

  test "should destroy inhabitant" do
    assert_difference('Inhabitant.count', -1) do
      delete :destroy, id: @inhabitant
    end

    assert_redirected_to inhabitants_path
  end
end
