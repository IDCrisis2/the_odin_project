# spec/core_extensions_spec.rb
require "spec_helper"

describe Array do
	context "#all_empty?" do
		it "returns true is all elements of the Array are empty" do
			expect(["", "", ""].all_empty?).to eq true
		end

		it "returns false is some of the Array elements are not empty" do
			expect(["", 1, "", Object.new, :a].all_empty?).to eq false
		end

		it "returns true for an empty Array" do
			expect([].all_empty?).to eq true
		end
	end

	
end