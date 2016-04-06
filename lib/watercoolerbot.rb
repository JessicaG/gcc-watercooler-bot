require 'slack-ruby-bot'

class WaterCoolerBot < SlackRubyBot::Bot
  command 'ping' do |client, data, match|
    client.say(text: 'pong', channel: data.channel)
  end

  match /^How is the weather in (?<location>\w*)\?$/ do |client, data, match|
    client.say(channel: data.channel, text: "The weather in #{match[:location]} is nice.")
  end
end

WaterCoolerBot.run