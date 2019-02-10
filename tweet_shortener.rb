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
def word_substituter(string)
  words_array = string.split(" ")
  dictionary.each do |k, v|
    while words_array.include?(k)
      words_array[words_array.index(k)] = v
    end
  end
  words_array.join(" ")
end

 def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end
