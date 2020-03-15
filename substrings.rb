def substrings (word, dictionary)
    word_lowcase = word.downcase
    times_found = 0
    word_array = word.split("")
    length_to_check = word.length
    dictionary_cap = dictionary.map(&:upcase)
    result_hash = {}
    result_hash.default = 0
    word_array.each_with_index do |item, index|
        count = (index + 1)
        working_string = ""
        remaining_char = (length_to_check - index)
        while word_array[count] != nil
            if working_string.length == 0
                working_string += item
                remaining_char -= 1
            else
                working_string += word_array[count]
                remaining_char -= 1
                count += 1
            end
            working_string_cap = working_string.upcase
            if dictionary_cap.include? working_string_cap
                result_hash[working_string] += 1
            end
        end
    end
    puts result_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)