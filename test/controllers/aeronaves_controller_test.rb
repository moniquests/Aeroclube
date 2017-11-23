require 'test_helper'

class AeronavesControllerTest < ActionController::TestCase
  setup do
    @aeronafe = aeronaves(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aeronaves)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aeronafe" do
    assert_difference('Aeronafe.count') do
      post :create, aeronafe: { Chassi: @aeronafe.Chassi, Nome: @aeronafe.Nome, Numero: @aeronafe.Numero, NumeroTripulantes: @aeronafe.NumeroTripulantes, QuantidadeHorasVoo: @aeronafe.QuantidadeHorasVoo, QuantidadeMotor: @aeronafe.QuantidadeMotor, Tamanho: @aeronafe.Tamanho }
    end

    assert_redirected_to aeronafe_path(assigns(:aeronafe))
  end

  test "should show aeronafe" do
    get :show, id: @aeronafe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aeronafe
    assert_response :success
  end

  test "should update aeronafe" do
    patch :update, id: @aeronafe, aeronafe: { Chassi: @aeronafe.Chassi, Nome: @aeronafe.Nome, Numero: @aeronafe.Numero, NumeroTripulantes: @aeronafe.NumeroTripulantes, QuantidadeHorasVoo: @aeronafe.QuantidadeHorasVoo, QuantidadeMotor: @aeronafe.QuantidadeMotor, Tamanho: @aeronafe.Tamanho }
    assert_redirected_to aeronafe_path(assigns(:aeronafe))
  end

  test "should destroy aeronafe" do
    assert_difference('Aeronafe.count', -1) do
      delete :destroy, id: @aeronafe
    end

    assert_redirected_to aeronaves_path
  end
end
