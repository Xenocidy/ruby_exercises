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