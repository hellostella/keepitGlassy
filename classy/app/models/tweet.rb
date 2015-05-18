class Tweet
  def self.config
    {
      consumer_key:    "Mj1JlleheSRHom7P5EwEk2ohl",
      consumer_secret: "kIAWQZL6ANBN2QxpFBzMOvDLiakXT2WXz6bhCjnFdEBzVK74Hs",
      access_token:    "3064794945-6R3r74kDYgFuOlUFvmEyVNcBqVW8fbcWPqDTIvf",
      access_token_secret: "Puovcmp3xVk9ExIDJ8uH5qKqqPRjFEGyHU21cuQxSMH17",
    }
  end

  def self.breaking(restaurant, tweet_limit = 5)
    client = Twitter::REST::Client.new(config)
    client.search("to: #{restaurant.name} ", :result_type => "recent").take(tweet_limit)
  end

end
