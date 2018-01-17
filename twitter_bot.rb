# Appel des différentes gem utilisées

require 'twitter'
require 'pry'
require 'inifile'


# def de la méthode follow prenant en compte un nombre non défini d'abo
# follow les users passés en paramètre

def follow(*usrs)
config = IniFile.load('app.ini')["config"]
client = Twitter::REST::Client.new(config)
p client

client.follow(usrs.each { |user| user})
end
# Appel de la fonction follow : décommenter
# follow("Michbidbup", "Bboylegros")


# def de la méthode tweet

def tweet1(tweet)
  config = IniFile.load('app.ini')["config"]
  client = Twitter::REST::Client.new(config)
  client.update(tweet)
end

# tweet1("Tweet test 2 @Michbidbup")

# def de la fonction tweet qui génère des tweets 

def tweet2(tweet, *usrs)
    config = IniFile.load('app.ini')["config"]
    client = Twitter::REST::Client.new(config)
    usrs.each do |usr|
    client.update(tweet + " @#{usr}")
    end
end

# Appel de la fonction tweet
tweet2("ca tweet sec", "Michbidbup", "WhoisMarvin42", "Bboylegros" )
