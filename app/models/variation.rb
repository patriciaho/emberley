class Variation
  include Mongoid::Document

  belongs_to :image

  field :name, type: String
  field :x_first, type: Integer
  field :x_last, type: Integer


end
