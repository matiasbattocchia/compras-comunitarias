class ProductoPedido
  include Mongoid::Document
  field :cantidad, type: Integer
  embedded_in :pedido
  belongs_to :producto_ofrecido
end
