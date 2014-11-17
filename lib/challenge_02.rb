class Order < Struct.new(:order_number, :amount)
end

class DollasDollas < Struct.new(:orders, :baseline)
  def total
    orders.map(&:amount).reduce(baseline.to_f, &:+)
  end
end
