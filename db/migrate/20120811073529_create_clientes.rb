class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :Nombre
      t.string :Email
      t.string :Direccion
      t.string :Imagen
      t.string :Telefono
      t.string :Celular
      t.text :Notas

      t.timestamps
    end
  end
end
