class AddCondicionesEspecialesToPacientes < ActiveRecord::Migration
  def change
    add_column :pacientes, :CondicionesEspeciales, :text

  end
end
