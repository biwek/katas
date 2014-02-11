require_relative '../lib/checkout'

describe Checkout do 

		let(:checkout) { Checkout.new }

	it "should get A99 price" do 
		expect(checkout.price("A99")).to eq(50)
	end	

	it "should get B15 price" do 
		expect(checkout.price("B15")).to eq(30)
	end

end