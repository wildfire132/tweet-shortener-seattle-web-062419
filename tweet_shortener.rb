# Write your code here.

def dictionary
dictionary = {
  "hello" => "hi",
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "for" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&",
}
end 

def word_substituter(string)
  string_array = string.split(" ")
  keys = dictionary.keys
  string.split(" ").collect do |word|
    if keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else 
      word = word
    end
  end.join(" ")
end 
  
def bulk_tweet_shortener(tweet)
  tweet.collect do |phrase|
    puts word_substituter(phrase)
  end
end

def selective_tweet_shortener(tweet)
if tweet.length > 140 
  word_substituter(tweet)
elsif tweet.length <= 140
  tweet
end
end 


def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).chars.length > 140  
    truncated = word_substituter(tweet).chars[0..136].push("...").join("")
  else 
    word_substituter(tweet) 
  end 
end 


  