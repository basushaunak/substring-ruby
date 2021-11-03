def substring(in_phrase,in_word_list)
    phrase = in_phrase.downcase.split()
    words=[]
    in_word_list.each do |word|
        words.push(word.downcase())
    end
    found = {}
    words.each do |word| # Individual words in the dictonary
        phrase.each do |wrd| # Individual words in the phrase
            if wrd.include?(word) # Dicionary word is present in the word in the phrase
                if found.dig(word) == nil # New word
                    found[word] = 1
                else
                    found[word]= found[word] + 1 #Existing word
                end
            end
        end
    end
    return found
end
ph = "These are the quick and brown quickly foxes and foxens who whose jump over lazy dogs. Yes sire the oxens are pretty lazy"
dct = ["ouch", "the", "fox", "ox", "oxes", "az"]
puts "Phrase: #{ph} "
puts "Dictionary: #{dct}"
puts substring(ph,dct)
