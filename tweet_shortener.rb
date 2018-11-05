require 'pry'

def dictionary
  {
  "hello" => "hi",
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "for" => "4",
  "four" => "4",
  'be' => 'b',
  'you' => 'u',
  "at" => "@",
  "and" => "&"
  }
end

def word_substituter(str_tweet)
  tweet = str_tweet.split(" ").map! do |word|
    if dictionary.keys.include?(word.downcase)
      dictionary[word.downcase]
    else
      word
    end
  end
  tweet.join(" ")
end


def bulk_tweet_shortener(tweet_arr)
  tweet_arr.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    return word_substituter(tweet)
  else 
    return tweet
  end
end

def 