require 'test_helper'

class UsuarioequiposControllerTest < ActionController::TestCase
  setup do
    @usuarioequipo = usuarioequipos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usuarioequipos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usuarioequipo" do
    assert_difference('Usuarioequipo.count') do
      post :create, usuarioequipo: { Usuarios_id: @usuarioequipo.Usuarios_id, categoria_equipos_id: @usuarioequipo.categoria_equipos_id }
    end

    assert_redirected_to usuarioequipo_path(assigns(:usuarioequipo))
  end

  test "should show usuarioequipo" do
    get :show, id: @usuarioequipo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @usuarioequipo
    assert_response :success
  end

  test "should update usuarioequipo" do
    patch :update, id: @usuarioequipo, usuarioequipo: { Usuarios_id: @usuarioequipo.Usuarios_id, categoria_equipos_id: @usuarioequipo.categoria_equipos_id }
    assert_redirected_to usuarioequipo_path(assigns(:usuarioequipo))
  end

  test "should destroy usuarioequipo" do
    assert_difference('Usuarioequipo.count', -1) do
      delete :destroy, id: @usuarioequipo
    end

    assert_redirected_to usuarioequipos_path
  end
end
