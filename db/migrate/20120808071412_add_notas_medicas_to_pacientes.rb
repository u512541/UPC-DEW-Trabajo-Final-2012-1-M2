class AddNotasMedicasToPacientes < ActiveRecord::Migration
  def change
    add_column :pacientes, :NotasMedicas, :text

  end
end
