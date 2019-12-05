require 'koala'
require 'json'

@graph = Koala::Facebook::API.new("your-fb-api")

profile = @graph.get_object("me")

friends = @graph.get_connections("me", "friends")

feed = @graph.get_connections("me", "feed")

@graph.put_connections("me", "feed", message: "I am writing on my wall!")

puts JSON.pretty_generate feed
