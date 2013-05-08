class Nodo
  include Mongoid::Document
  field :nombre, type: String
  has_many :pedidos_de_compra, class_name: 'Pedido', inverse_of: :cliente
  has_many :pedidos_de_venta, class_name: 'Pedido', inverse_of: :proveedor
  has_many :productos_ofrecidos
end
