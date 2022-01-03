def substrings(words, dictionary)
    words.downcase!
    result = Hash.new(0)
    puts words

    dictionary.each do |word|
        matches = words.scan(word).length
        result[word] = matches unless matches == 0
    end

    return result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
