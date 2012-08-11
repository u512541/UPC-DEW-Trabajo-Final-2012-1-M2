require 'test_helper'

class PacientesControllerTest < ActionController::TestCase
  setup do
    @paciente = pacientes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pacientes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create paciente" do
    assert_difference('Paciente.count') do
      post :create, paciente: { Actividad: @paciente.Actividad, CondicionesEspeciales: @paciente.CondicionesEspeciales, Dueno: @paciente.Dueno, Especie: @paciente.Especie, Esterilizado: @paciente.Esterilizado, FechaNacimiento: @paciente.FechaNacimiento, Genero: @paciente.Genero, ImagenesMedicas: @paciente.ImagenesMedicas, NotasMedicas: @paciente.NotasMedicas, Pesokg: @paciente.Pesokg, Raza: @paciente.Raza, Tamano: @paciente.Tamano, TipoSangre: @paciente.TipoSangre }
    end

    assert_redirected_to paciente_path(assigns(:paciente))
  end

  test "should show paciente" do
    get :show, id: @paciente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @paciente
    assert_response :success
  end

  test "should update paciente" do
    put :update, id: @paciente, paciente: { Actividad: @paciente.Actividad, CondicionesEspeciales: @paciente.CondicionesEspeciales, Dueno: @paciente.Dueno, Especie: @paciente.Especie, Esterilizado: @paciente.Esterilizado, FechaNacimiento: @paciente.FechaNacimiento, Genero: @paciente.Genero, ImagenesMedicas: @paciente.ImagenesMedicas, NotasMedicas: @paciente.NotasMedicas, Pesokg: @paciente.Pesokg, Raza: @paciente.Raza, Tamano: @paciente.Tamano, TipoSangre: @paciente.TipoSangre }
    assert_redirected_to paciente_path(assigns(:paciente))
  end

  test "should destroy paciente" do
    assert_difference('Paciente.count', -1) do
      delete :destroy, id: @paciente
    end

    assert_redirected_to pacientes_path
  end
end
