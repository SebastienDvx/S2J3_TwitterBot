require 'twitter'
require 'pry'
require 'inifile'

config = IniFile.load('app.ini')["config"]

client = Twitter::Streaming::Client.new(config)
# binding.pry
p client

tweets = client.user_timeline('Bboylegros', count: 20)
