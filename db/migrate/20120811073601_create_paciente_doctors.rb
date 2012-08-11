class CreatePacienteDoctors < ActiveRecord::Migration
  def change
    create_table :paciente_doctors do |t|
      t.integer :Paciente_id
      t.integer :Doctor_id

      t.timestamps
    end
  end
end
