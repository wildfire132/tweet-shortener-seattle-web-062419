# Write your code here.

def dictionary
"hello" becomes 'hi'
"to, two, too" become '2' 
"for, four" become '4'
'be' becomes 'b'
'you' becomes 'u'
"at" becomes "@" 
"and" becomes "&"

dictionary = {
  "hello" => "hi"
  "to" => "2"
  "two" => "2"
  "too" => "2"
  "for" => "4"
  "four" => "4"
  "be" => "b"
  "you" => "u"
  "at" => "@"
  "and" => "&"
}
end 

def word_substituter(string, dictionary)
  string_array = string.split(", ")
  keys = dictionary.keys
  string_array.each do |word|
    if keys.include?(word)
      word = dictionary[word]
    end
  end
end 
  
bulk_tweet_shortener(tweet_array)
  