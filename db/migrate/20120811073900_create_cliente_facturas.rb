class CreateClienteFacturas < ActiveRecord::Migration
  def change
    create_table :cliente_facturas do |t|
      t.integer :Cliente_id
      t.integer :Factura_id

      t.timestamps
    end
  end
end
