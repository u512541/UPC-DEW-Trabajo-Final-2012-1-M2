class Cliente < ActiveRecord::Base
  attr_accessible :Celular, :Direccion, :Email, :Imagen, :Nombre, :Notas, :Telefono
end
