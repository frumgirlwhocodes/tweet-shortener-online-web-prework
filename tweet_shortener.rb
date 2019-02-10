# Write your code here.
def dictionary
  {
    'hello' => 'hi',
    'to' => 2,
    'too' => 2,
    'two' => 2,
    'for' => 4,
    'four' => 4,
    'be' => 'b',
    'you' => 'u',
    'at' => '@',
    'and' => '&'
  }
end 
def word_substituter(tweet)
  split_tweet = tweet.split

   split_tweet.each_with_index do |word, index|
    dictionary.each do |to_replace, replacement|
      if word == to_replace
        split_tweet[index] = replacement
      end
    end
  end
split_tweet.join(" ")
end
def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end 
