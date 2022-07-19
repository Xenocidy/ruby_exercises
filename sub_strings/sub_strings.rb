# Implement a method #substrings that takes a word as the first 
# argument and then an array of valid substrings (your dictionary) 
# as the second argument. It should return a hash listing each 
# substring (case insensitive) that was found in the original string 
# and how many times it was found.

#   > dictionary = ["below","down","go","going","horn","how",
#     "howdy","it","i","low","own","part","partner","sit"]
#   => ["below","down","go","going","horn","how","howdy","it",
#     "i","low","own","part","partner","sit"]

#   > substrings("below", dictionary)
#   => { "below" => 1, "low" => 1 }

# Next, make sure your method can handle multiple words:

#   > substrings("Howdy partner, sit down! How's it going?", dictionary)
#   => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, 
#     "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, 
#     "partner" => 1, "sit" => 1 }

# Please note the order of your keys might be different.

# Quick Tips:
# Recall how to turn strings into arrays and arrays into strings.


dictionary = ["below","down","go","going",
    "horn","how","howdy","it","i","low","own","part","partner","sit"]

##
# For each word in the dictionary, we check if it occurs in the string. 
# If it does, we add it to the answer hash with the number of occurrences
# 
# Args:
#   string: a string of words
#   dictionary: an array of words to check against
def substrings(string, dictionary)
    string = string.downcase
    answer = {}

    for word in dictionary
        occurrence = string.scan(word).length
        if occurrence > 0
            answer[word] = occurrence
        end
    end

    p answer
end

substrings("below", dictionary)

substrings("Howdy partner, sit down! How's it going?", dictionary)