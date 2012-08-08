class AddImagenesMedicasToPacientes < ActiveRecord::Migration
  def change
    add_column :pacientes, :ImagenesMedicas, :string

  end
end
