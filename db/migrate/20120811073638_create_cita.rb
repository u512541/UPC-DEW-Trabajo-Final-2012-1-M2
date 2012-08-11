class CreateCita < ActiveRecord::Migration
  def change
    create_table :cita do |t|
      t.string :NombreVacuna
      t.string :Paciente
      t.string :Dueno
      t.string :Telefono
      t.string :Direccion
      t.date :FechaRegistro
      t.string :CitaTarea

      t.timestamps
    end
  end
end
