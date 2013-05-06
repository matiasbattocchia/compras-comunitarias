class ProductoOfrecido
  include Mongoid::Document
  field :precio, type: Decimal
  field :peso, type: Decimal
  has_many :productos_pedidos
  belongs_to :producto
end
