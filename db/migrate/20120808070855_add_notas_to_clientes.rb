class AddNotasToClientes < ActiveRecord::Migration
  def change
    add_column :clientes, :notas, :text

  end
end
