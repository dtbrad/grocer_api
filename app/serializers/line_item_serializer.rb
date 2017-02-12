class LineItemSerializer < ActiveModel::Serializer
  attributes :id, :basket_date, :price_cents, :quantity, :weight, :total_cents

  def basket_date
    object.basket.date_time
  end
end
