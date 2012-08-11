# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120811152632) do

  create_table "cita", :force => true do |t|
    t.string   "NombreVacuna"
    t.string   "Paciente"
    t.string   "Dueno"
    t.string   "Telefono"
    t.string   "Direccion"
    t.date     "FechaRegistro"
    t.string   "CitaTarea"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "cliente_cita", :force => true do |t|
    t.integer  "Cliente_id"
    t.integer  "Cita_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "cliente_facturas", :force => true do |t|
    t.integer  "Cliente_id"
    t.integer  "Factura_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "cliente_pacientes", :force => true do |t|
    t.integer  "Cliente_id"
    t.integer  "Paciente_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "clientes", :force => true do |t|
    t.string   "Nombre"
    t.string   "Email"
    t.string   "Direccion"
    t.string   "Imagen"
    t.string   "Telefono"
    t.string   "Celular"
    t.text     "Notas"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "detalleproducto_productos", :force => true do |t|
    t.integer  "Detalleproducto_id"
    t.integer  "Producto_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "detalleproductos", :force => true do |t|
    t.string   "factura"
    t.string   "Producto"
    t.integer  "Cantidad"
    t.decimal  "Total"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "doctors", :force => true do |t|
    t.string   "NombreApellido"
    t.string   "Email"
    t.string   "Telefono"
    t.string   "UsuarioSistema"
    t.string   "Administrador"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "factura_detalleproductos", :force => true do |t|
    t.integer  "Factura_id"
    t.integer  "Detalleproducto_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "facturas", :force => true do |t|
    t.string   "Dueno"
    t.string   "Paciente"
    t.string   "Ruc"
    t.string   "Direccion"
    t.date     "FechaRegistro"
    t.decimal  "MontoTotal"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "mains", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "paciente_cita", :force => true do |t|
    t.integer  "Paciente_id"
    t.integer  "Cita_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "paciente_doctors", :force => true do |t|
    t.integer  "Paciente_id"
    t.integer  "Doctor_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "pacientes", :force => true do |t|
    t.string   "Dueno"
    t.string   "Especie"
    t.string   "Raza"
    t.string   "Genero"
    t.string   "TipoSangre"
    t.string   "Esterilizado"
    t.string   "Tamano"
    t.string   "Actividad"
    t.decimal  "Pesokg"
    t.date     "FechaNacimiento"
    t.text     "NotasMedicas"
    t.string   "ImagenesMedicas"
    t.text     "CondicionesEspeciales"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "productos", :force => true do |t|
    t.string   "Codigo"
    t.string   "Detalle"
    t.decimal  "Precio"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "prospectos", :force => true do |t|
    t.string   "Nombre"
    t.string   "Email"
    t.string   "Direccion"
    t.string   "Imagen"
    t.string   "Telefono"
    t.string   "Celular"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.string   "auth_token"
    t.string   "password_reset_token"
    t.datetime "password_reset_sent_at"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

end
