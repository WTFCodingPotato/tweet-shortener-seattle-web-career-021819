def dictionary
  word_change_list = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  tweet_array = tweet.split(" ")
  tweet_array.each_with_index do |word, index|
    if dictionary.keys.include?(word.downcase)
      tweet_array[index] = dictionary[word.downcase]
    end
  end
  tweet_array.join(" ")
end

def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener (array_of_tweets)
  empty = []
  array_of_tweets.each do |tweet|
    if tweet.count < 140
      empty << word_substituter(tweet)
    else
      empty << tweet
    end
  end
  empty
end
