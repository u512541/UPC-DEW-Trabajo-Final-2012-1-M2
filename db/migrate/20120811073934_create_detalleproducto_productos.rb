class CreateDetalleproductoProductos < ActiveRecord::Migration
  def change
    create_table :detalleproducto_productos do |t|
      t.integer :Detalleproducto_id
      t.integer :Producto_id

      t.timestamps
    end
  end
end
