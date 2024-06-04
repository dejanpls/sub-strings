dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
    str = string.downcase.scan(/[a-zA-Z\s]*/).join

    selected = dictionary.select {|word| str.include?(word)}

    hsh = selected.reduce(Hash.new(0)) do |arr, word|
        arr[word] = str.scan(/(?=#{word})/).count
        arr
    end
    p hsh
end 

substrings("Howdy partner, sit down! How's it going?", dictionary)
substrings("below", dictionary)