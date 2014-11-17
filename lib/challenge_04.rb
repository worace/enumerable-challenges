class Client
  attr_reader :orders
  def initialize(orders)
    @orders = orders
  end

  def most_recent_order_date
    orders.sort_by(&:order_date).last.order_date
  end
end

class LapsedCustomerFinder
  attr_reader :clients
  def initialize(clients)
    @clients = clients
  end
end
