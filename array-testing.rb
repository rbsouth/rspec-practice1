require 'rspec'

describe Array do
	before(:all) do
		@array = Array.new
	end

	it '#new should return a blank array' do
		expect(@array).to eq([])
	end

	it 'Should return a #count of 0' do
		expect(@array.count).to eq(0)
	end

	it 'Should return an array without first 3' do
		expect([1, 2, 3, 4, 5, 0].drop(3)).to eq([4, 5, 0])
	end

	it 'Should return the value at index 2' do
		expect([1, 2, 3, 4, 5, 0].at(2)).to eq(3)
	end

	it 'Checks that the value of 7 is nil' do
		expect([1, 2, 3, 4, 5, 0][7]).to eq(nil)
	end

	it 'Checks that the 3rd value is deleted' do
		expect([1, 2, 3, 4, 5, 0].delete_at(3)).to eq(4)
	end

	after do
		puts "Completed Test for @array: #{@array} "
	end
end