class Producto
  include Mongoid::Document
  field :descripcion, type: String
  has_many :productos_ofrecidos
end
