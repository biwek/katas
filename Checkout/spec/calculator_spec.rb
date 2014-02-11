require_relative '../lib/calculator'

describe Calculator do 

	let(:checkout) {Checkout.new}
	let(:calculator) {Calculator.new}

	it "should get a total of one A99" do
		checkout.add_to_basket("A99")
		expect(calculator.total(checkout.order)).to eq(50)
	end

	it "should get a total of two A99" do
		checkout.add_to_basket("A99")
		checkout.add_to_basket("A99")
		expect(calculator.total(checkout.order)).to eq(100)
	end

end