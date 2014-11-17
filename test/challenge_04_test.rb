require "date"
require "minitest"
require "minitest/autorun"
require "minitest/spec"
require_relative "../lib/challenge_04"

describe Order do
  it "has an order date" do
    order = Order.new(1,55.75,Date.parse("2014-11-24"))
    assert_equal Date.parse("2014-11-24"), order.order_date
  end

  it "sorts on order date" do
    order1 = Order.new(1,55.75,Date.parse("2014-11-24"))
    order2 = Order.new(2,55.75,Date.parse("2014-11-30"))
    assert_equal order2, [order1,order2].sort.first
    assert_equal order1, [order1,order2].sort_by(&:order_number).first
  end
end

describe Client do
  it "has orders" do
    client = Client.new([Object.new])
    assert_equal 1, client.orders.count
  end

  it "can calculate the last order date from its orders" do
    orders = [Order.new(1,55.74,Date.parse("2014-11-15")),
              Order.new(2,23.43,Date.parse("2013-10-31")),
              Order.new(3,15.54,Date.parse("2014-11-10"))]
    client = Client.new(orders)
    assert_equal Date.parse("2014-11-15"), client.most_recent_order_date
  end

  it "works with no orders" do
    skip
    assert_equal nil, Client.new([]).most_recent_order_date
  end
end

describe LapsedCustomerFinder do
  #clients
  #clients have placed orders at some point
  #taking in array of clients
  # => somehow get their last order date
  # => find clients whos last order was more than 30 days ago
  # give them to waldemar
  it "takes some clients" do
    clients = [Object.new]
    finder = LapsedCustomerFinder.new(clients)
    assert_equal clients, finder.clients
  end
end
