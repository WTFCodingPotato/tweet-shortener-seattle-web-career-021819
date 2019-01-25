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
  tweet.split(" ").each_with_index do |word, index|
    if dictionary.keys.include?(word.downcase)
      tweet_array[index] = dictionary[word.downcase]
    end
  end
  tweet_array.join(" ")
end

def bulk_tweet_shortener
end
