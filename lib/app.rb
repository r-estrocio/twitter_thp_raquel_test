# ligne très importante qui appelle la gem.
require 'twitter'

# Appelle la gem Dotenv
require 'dotenv'

# n'oublie pas les lignes pour Dotenv ici…
Dotenv.load('.env')

# quelques lignes qui appellent les clés d'API de ton fichier .env
def login_twitter()
client = Twitter::REST::Client.new do |config|
 config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
 config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
 config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
 config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
 return client
end

# ligne qui permet de tweeter sur ton compte
def my_first_tweet()
  client = login_twitter
  return client.update('My first tweet in Ruby !!!!')
end
