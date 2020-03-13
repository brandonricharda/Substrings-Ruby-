def substrings (word, dictionary)
    word_lowcase = word.downcase
    times_found = 0
    word_array = word.split("")
    longest_substring = dictionary.max_by(&:length)
    length_to_check = longest_substring.length
    dictionary.each_with_index do |item, index|
        dictionary_word = item.split("")
        dictionary_word.each_with_index do |subitem, subindex|
            count = (subindex + 1)
            working_string = ""
            remaining_char = (length_to_check - subindex)
            while dictionary_word[count] != nil
                if working_string.length == 0
                    if remaining_char >= 2
                        working_string += subitem + dictionary_word[count]
                    end
                else
                    working_string += dictionary_word[count]
                end
                remaining_char -= 1
                count += 1
                puts working_string
                if working_string === word_lowcase
                    puts "Match Found"
                else
                    puts "No Match Found"
                end
            end
        end
    end
end

substrings("do", ["donut"])


# word_array.each_with_index do |item, index|
#     count = (index + 1)
#     working_string = ""
    
# end





