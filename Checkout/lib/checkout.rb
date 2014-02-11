class Checkout 

	INVENTORY = [{sku: "A99", price: 50}, {sku: "B15", price: 30}]

	attr_reader :order

	def initialize
		@order = []
	end

	def price(sku)
		INVENTORY.each {|product| return product[:price] if product[:sku] == sku}
	end

	def add_to_basket(product)
		@order << product
	end

end