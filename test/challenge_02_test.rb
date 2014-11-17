require "minitest"
require "minitest/autorun"
require "minitest/spec"
require_relative "../lib/challenge_02"

describe DollasDollas do
  it "takes an array of orders" do
    order = Order.new(1, 18.57)
    dollas = DollasDollas.new([order])
    assert_equal [order], dollas.orders
  end

  it "sums the order amounts" do
    orders = [Order.new(1,18.57), Order.new(2, 6.43)]
    dollas = DollasDollas.new(orders)
    assert_equal 25, dollas.total
  end
end
