require "minitest"
require "minitest/autorun"
require "minitest/spec"
require_relative "../lib/challenge_02"

#update our existing revenue calc (aka dollas dollas)
#to include rent money
#

describe DollasDollas do
  it "accounts for a baseline rent revenue when generating daily total" do
    orders = [Order.new(1,18.57), Order.new(2, 6.43)]
    rental_income = 25.33

    dollas = DollasDollas.new(orders, rental_income)

    assert_equal 50.33, dollas.total
  end
end
