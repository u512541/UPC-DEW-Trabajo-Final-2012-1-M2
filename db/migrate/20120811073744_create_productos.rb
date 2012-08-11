class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.string :Codigo
      t.string :Detalle
      t.decimal :Precio

      t.timestamps
    end
  end
end
