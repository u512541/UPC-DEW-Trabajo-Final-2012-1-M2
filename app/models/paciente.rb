class Paciente < ActiveRecord::Base
  attr_accessible :Actividad, :CondicionesEspeciales, :Dueno, :Especie, :Esterilizado, :FechaNacimiento, :Genero, :ImagenesMedicas, :NotasMedicas, :Pesokg, :Raza, :Tamano, :TipoSangre
end
