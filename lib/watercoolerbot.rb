require 'slack-ruby-bot'

class WaterCoolerBot < SlackRubyBot::Bot
  command 'ping' do |client, data, match|
    client.say(text: 'pong', channel: data.channel)
  end

  match /^How is the weather in (?<location>\w*)\?$/ do |client, data, match|
    client.say(channel: data.channel, text: "The weather in #{match[:location]} is glorious.")
  end

  match /^millenial$/ do |client, data, match|
    client.say(channel: data.channel, text: "The struggle is real", image: './img/zoom_jw.png')
  end

  match /^potato$/ do |client, data, match|
    client.say(channel: data.channel, text: "Developer Duck to the rescue!", gif: 'musical duck')
  end

end

WaterCoolerBot.run