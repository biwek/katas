class Calculator

	def initialize
		@checkout = Checkout.new
	end

	def total(order)
		order_values = order.map! {|prod| @checkout.price(prod)}
		order_values.inject(:+)
	end

end