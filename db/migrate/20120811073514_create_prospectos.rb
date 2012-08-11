class CreateProspectos < ActiveRecord::Migration
  def change
    create_table :prospectos do |t|
      t.string :Nombre
      t.string :Email
      t.string :Direccion
      t.string :Imagen
      t.string :Telefono
      t.string :Celular

      t.timestamps
    end
  end
end
