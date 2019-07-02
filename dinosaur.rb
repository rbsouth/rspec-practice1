require "rspec"

class	Dinosaur
	def initialize(options = {})
		@makes_noise = options[:makes_noise]
	end

	def poke
		'ROAARRR' if @makes_noise
	end

	def favorite_food
		'eggs are gud af'
	end
end

describe Dinosaur do
	context 'makes noise' do
		it '#poke should roar' do
			@dino = Dinosaur.new(makes_noise: true)
			expect(@dino.poke).to eq('ROAARRR')
		end
	end

	context 'does not make noise' do
		it '#poke should not roar' do
			@dino = Dinosaur.new(makes_noise: false)
			expect(@dino.poke).to eq(nil)
		end
	end

	it 'should return #favorite_food' do
		@dino = Dinosaur.new()
		expect(@dino.favorite_food).to eq('eggs are gud af')
	end
end