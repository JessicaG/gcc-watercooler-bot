require_relative 'test_helper'
require './lib/watercoolerbot'

class WaterCoolerBotTest < Minitest::Test

	def test_it_responds_pong_from_ping
		WaterCoolerBot.command('ping')
		assert_equal(client.text, 'pong')
	end

	def setup
		@watercoolerbot = WaterCoolerBot.new
	end

end