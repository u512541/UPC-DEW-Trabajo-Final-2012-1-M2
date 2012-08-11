require 'test_helper'

class ProspectosControllerTest < ActionController::TestCase
  setup do
    @prospecto = prospectos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prospectos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prospecto" do
    assert_difference('Prospecto.count') do
      post :create, prospecto: { Celular: @prospecto.Celular, Direccion: @prospecto.Direccion, Email: @prospecto.Email, Imagen: @prospecto.Imagen, Nombre: @prospecto.Nombre, Telefono: @prospecto.Telefono }
    end

    assert_redirected_to prospecto_path(assigns(:prospecto))
  end

  test "should show prospecto" do
    get :show, id: @prospecto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prospecto
    assert_response :success
  end

  test "should update prospecto" do
    put :update, id: @prospecto, prospecto: { Celular: @prospecto.Celular, Direccion: @prospecto.Direccion, Email: @prospecto.Email, Imagen: @prospecto.Imagen, Nombre: @prospecto.Nombre, Telefono: @prospecto.Telefono }
    assert_redirected_to prospecto_path(assigns(:prospecto))
  end

  test "should destroy prospecto" do
    assert_difference('Prospecto.count', -1) do
      delete :destroy, id: @prospecto
    end

    assert_redirected_to prospectos_path
  end
end
