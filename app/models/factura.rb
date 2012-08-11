class Factura < ActiveRecord::Base
  attr_accessible :Direccion, :Dueno, :FechaRegistro, :MontoTotal, :Paciente, :Ruc
end
