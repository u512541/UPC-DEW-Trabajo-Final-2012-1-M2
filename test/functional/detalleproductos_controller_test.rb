require 'test_helper'

class DetalleproductosControllerTest < ActionController::TestCase
  setup do
    @detalleproducto = detalleproductos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:detalleproductos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create detalleproducto" do
    assert_difference('Detalleproducto.count') do
      post :create, detalleproducto: { Cantidad: @detalleproducto.Cantidad, Producto: @detalleproducto.Producto, Total: @detalleproducto.Total, factura: @detalleproducto.factura }
    end

    assert_redirected_to detalleproducto_path(assigns(:detalleproducto))
  end

  test "should show detalleproducto" do
    get :show, id: @detalleproducto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @detalleproducto
    assert_response :success
  end

  test "should update detalleproducto" do
    put :update, id: @detalleproducto, detalleproducto: { Cantidad: @detalleproducto.Cantidad, Producto: @detalleproducto.Producto, Total: @detalleproducto.Total, factura: @detalleproducto.factura }
    assert_redirected_to detalleproducto_path(assigns(:detalleproducto))
  end

  test "should destroy detalleproducto" do
    assert_difference('Detalleproducto.count', -1) do
      delete :destroy, id: @detalleproducto
    end

    assert_redirected_to detalleproductos_path
  end
end
