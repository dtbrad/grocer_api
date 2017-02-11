class LineItemSerializer < ActiveModel::Serializer
  attributes :id, :basket_id

  # def basket_date
  #   binding.pry
  #   object.basket_date
  # end
  # ha_many :line_items
end
