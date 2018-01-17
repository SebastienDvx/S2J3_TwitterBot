require 'twitter'
require 'pry'
require 'inifile'


def follow(*usrs)
config = IniFile.load('app.ini')["config"]
client = Twitter::REST::Client.new(config)
p client

client.follow(usrs.each { |user| user})
end

# follow("Michbidbup", "Bboylegros")



def tweet1(tweet)
  config = IniFile.load('app.ini')["config"]
  client = Twitter::REST::Client.new(config)
  client.update(tweet)
end

# tweet1("Tweet test 2 @Michbidbup")



def tweet2(tweet, *usrs)
    config = IniFile.load('app.ini')["config"]
    client = Twitter::REST::Client.new(config)
    usrs.each do |usr|
    client.update(tweet + " @#{usr}")
    end
end

tweet2("ca tweet sec", "Michbidbup", "WhoisMarvin42", "Bboylegros" )
