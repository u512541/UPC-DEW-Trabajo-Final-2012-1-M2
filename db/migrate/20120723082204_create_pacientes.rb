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
      t.decimal :Peso
      t.date :FechaNacimiento

      t.timestamps
    end
  end
end
