class Order < Struct.new(:order_number, :amount, :order_date)
  def <=>(other)
    other.order_date.<=>(order_date)
  end
end

class DollasDollas < Struct.new(:orders, :baseline)
  def total
    orders.map(&:amount).reduce(baseline.to_f, &:+)
  end
end
