class CreateDetalleproductos < ActiveRecord::Migration
  def change
    create_table :detalleproductos do |t|
      t.string :factura
      t.string :Producto
      t.integer :Cantidad
      t.decimal :Total

      t.timestamps
    end
  end
end
