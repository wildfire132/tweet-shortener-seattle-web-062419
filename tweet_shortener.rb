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
    if keys.include?(word)
      word = dictionary[word]
    else 
      word = word
    end
  end.join(" ")
end 
  
def bulk_tweet_shortener(tweet_array)
tweet_array.collect do |tweet|
  puts word_substituter(tweet)
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
  tweet.split(" ").map do |phrase|
if tweet.length > 140
  word_substituter(tweet)
  puts "#{tweet[0..140]}..."
else
  phrase
end
end.join(" ")
end

  