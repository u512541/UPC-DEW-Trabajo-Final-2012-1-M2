class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :NombreApellido
      t.string :Email
      t.string :Telefono
      t.string :UsuarioSistema
      t.string :Administrador

      t.timestamps
    end
  end
end
