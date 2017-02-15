class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :total_purchased, :highest_price, :lowest_price, :most_recently_purchased
  # has_many :line_items


  # def total_purchased
  #   binding.pry
  #   @scope.line_items.where(product: object).sum(:quantity)
  # end
  #
  # def highest_price
  #   @scope.line_items.where(product: object).order(price_cents: :desc).first.price_cents
  # end
  #
  # def lowest_price
  #   @scope.line_items.where(product: object).order(:price_cents).first.price_cents
  # end
  #
  # def most_recently_purchased
  #   object.baskets.where(user: @scope).order('baskets.date_time').last.date_time
  # end
end
