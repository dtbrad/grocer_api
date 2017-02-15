class Product < ApplicationRecord
  has_many :line_items, dependent: :destroy
  has_many :baskets, through: :line_items
  has_many :users, through: :baskets

  def self.filtered_products
    Product.where.not(name: ['Beer Bottle Dep', 'Beer Deposit 30 C',
                             'Beer Deposit 60 C', '$5 Off $30 Offer',
                             '$10 Off Coupon', '25% Wine Discount',
                             'Bag Refund', 'Bag It Forward', '$5 Off $30 offer',
                             '$5 Off Coupon', 'Beer Deposit 30C'])
  end

  def total_purchased
    line_items.where(product: self).sum(:quantity)
  end

  def highest_price
    line_items.where(product: self).order(price_cents: :desc).first.price_cents
  end

  def lowest_price
    line_items.where(product: self).order(:price_cents).first.price_cents
  end

  def most_recently_purchased
    baskets.order('baskets.date_time').last.date_time
  end
end
