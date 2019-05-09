# Write your code here.

def dictionary 
  dictionary = {
    :hello =>"hi",
    :to =>"2", 
    :two =>"2",
    :too =>"2", 
    :for =>"4", 
    :four =>"4",
    :be =>"b",
    :you =>"u",
    :at =>"@",
    :and =>"&"
  }
  
end
  

def word_substituter(tweet)
  split_tweet = tweet.split(" ")

   split_tweet.each_with_index do |word, index|
    dictionary.keys.each do |dict|
      if word == dict || word == dict.capitalize
        split_tweet.delete_at(index)
        split_tweet.insert(index, dictionary[dict])
      end
    end
  end
  split_tweet.join(" ")
end