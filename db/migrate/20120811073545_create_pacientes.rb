class CreatePacientes < ActiveRecord::Migration
  def change
    create_table :pacientes do |t|
      t.string :Dueno
      t.string :Especie
      t.string :Raza
      t.string :Genero
      t.string :TipoSangre
      t.string :Esterilizado
      t.string :Tamano
      t.string :Actividad
      t.decimal :Pesokg
      t.date :FechaNacimiento
      t.text :NotasMedicas
      t.string :ImagenesMedicas
      t.text :CondicionesEspeciales

      t.timestamps
    end
  end
end
