class CreateFacturas < ActiveRecord::Migration
  def change
    create_table :facturas do |t|
      t.string :Dueno
      t.string :Paciente
      t.string :Ruc
      t.string :Direccion
      t.date :FechaRegistro
      t.decimal :MontoTotal

      t.timestamps
    end
  end
end
