class CreateClientePacientes < ActiveRecord::Migration
  def change
    create_table :cliente_pacientes do |t|
      t.integer :Cliente_id
      t.integer :Paciente_id

      t.timestamps
    end
  end
end
