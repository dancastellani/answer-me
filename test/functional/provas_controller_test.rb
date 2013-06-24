require 'test_helper'

class ProvasControllerTest < ActionController::TestCase
  setup do
    @prova = provas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:provas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prova" do
    assert_difference('Prova.count') do
      post :create, prova: { descricao: @prova.descricao }
    end

    assert_redirected_to prova_path(assigns(:prova))
  end

  test "should show prova" do
    get :show, id: @prova
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prova
    assert_response :success
  end

  test "should update prova" do
    put :update, id: @prova, prova: { descricao: @prova.descricao }
    assert_redirected_to prova_path(assigns(:prova))
  end

  test "should destroy prova" do
    assert_difference('Prova.count', -1) do
      delete :destroy, id: @prova
    end

    assert_redirected_to provas_path
  end
end
