class CreatePacienteCita < ActiveRecord::Migration
  def change
    create_table :paciente_cita do |t|
      t.integer :Paciente_id
      t.integer :Cita_id

      t.timestamps
    end
  end
end
