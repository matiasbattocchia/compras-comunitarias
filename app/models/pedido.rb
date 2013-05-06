class Pedido
  include Mongoid::Document
  field :estado, type: String
  embeds_many :productos_pedidos
  accepts_nested_attributes_for :productos_pedidos
end
