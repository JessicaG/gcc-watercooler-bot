require 'slack-ruby-bot'

class WaterCoolerBot < SlackRubyBot::Bot
  command 'ping' do |client, data, match|
    client.say(text: 'pong', channel: data.channel)
  end

  match /^How is the weather in (?<location>\w*)\?$/ do |client, data, match|
    client.say(channel: data.channel, text: "The weather in #{match[:location]} is glorious.")
  end

  match /^(?<word>\w*)\!$/ do |client, data, match|
    client.say(channel: data.channel, text: "Of course, there must be #{match[:word]}", gif: :word)
  end

  match /^millenial$/ do |client, data, match|
    client.say(channel: data.channel, text: millenial_responses, url: 'https://scontent.fsnc1-1.fna.fbcdn.net/hphotos-xpf1/l/t31.0-8/12967308_1068280473252357_6081231978689125756_o.jpg')
  end

  match /^potato$/ do |client, data, match|
    client.say(channel: data.channel, text: "Developer Duck to the rescue!", gif: 'duck flock')
  end

  def self.millenial_responses
  	["That is on fleek", "I cannot even", "Sorry, not sorry","SO MUCH JOMO RIGHT NOW", "With you hundo P", "Stop phubbing me","JK I still love ya", "This is so perf", "The struggle is real", "Struggle is V real"].sample
  end

end

WaterCoolerBot.run