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

  match /^millenial$/ do |client, data|
    client.say(channel: data.channel, text: millenial_responses, image_url: '../img/zoom_jw.png')
  end

  match /^potato$/ do |client, data|
    client.say(channel: data.channel, text: "Developer Duck to the rescue!", gif: 'duck flock')
  end
  
  match /^james brown$/ do |client, data|
    client.say(channel: data.channel, text: "Smooth, smooth #{@jamesbrown}", gif: 'james brown')
  end

  match /^elaine$/ do |client, data|
    client.say(channel: data.channel, text: elaine_responses, gif: 'scolding mom')
  end

  match /^rehan$/ do |client, data|
    client.say(channel: data.channel, text: rehan_responses, gif: 'charming man')
  end

  def self.millenial_responses
  	["That is on fleek", "I cannot even", "Sorry, not sorry","SO MUCH JOMO RIGHT NOW", "With you hundo P", "Stop phubbing me","JK I still love ya", "This is so perf", "The struggle is real", "Struggle is V real"].sample
  end

  def self.elaine_responses
    ["Now kids, let's move this out of the #{watercooler}", "They are hippies in people's republic", "But is it compostable? #{:scream:}", "NICE", "Aww, LOVE BURST!", "#nerds" ].sample
  end

  def self.rehan_responses
    ["I'm gonna need you take that down", "You just made my day", "This IS casual Rehan"].sample
  end 

end

WaterCoolerBot.run
