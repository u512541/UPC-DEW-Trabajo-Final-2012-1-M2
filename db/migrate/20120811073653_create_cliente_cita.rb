class CreateClienteCita < ActiveRecord::Migration
  def change
    create_table :cliente_cita do |t|
      t.integer :Cliente_id
      t.integer :Cita_id

      t.timestamps
    end
  end
end
