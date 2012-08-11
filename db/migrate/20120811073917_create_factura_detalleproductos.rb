class CreateFacturaDetalleproductos < ActiveRecord::Migration
  def change
    create_table :factura_detalleproductos do |t|
      t.integer :Factura_id
      t.integer :Detalleproducto_id

      t.timestamps
    end
  end
end
