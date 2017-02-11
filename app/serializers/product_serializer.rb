class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :total_purchased, :highest_price

  def total_purchased
    @scope.line_items.where(product: object).sum(:quantity)
  end

  def highest_price
    @scope.line_items.where(product: object).order(price_cents: :desc).first.price_cents
  end

end



# def times_bought
#   line_items.where(product: self).sum(:quantity)
# end
