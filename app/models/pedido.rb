class Pedido
  include Mongoid::Document
  field :estado, type: String
  embeds_many :productos_pedidos
  belongs_to :proveedor, class_name: 'Nodo', inverse_of: :pedidos_de_venta
  belongs_to :cliente, class_name: 'Nodo', inverse_of: :pedidos_de_compra
  accepts_nested_attributes_for :productos_pedidos
end
