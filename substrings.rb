def substrings (word, dictionary)
    word_lowcase = word.downcase
    times_found = 0
    word_array = word.split("")
    length_to_check = word.length

    word_array.each_with_index do |item, index|
        count = (index + 1)
        working_string = ""
        remaining_char = (length_to_check - index)
        while word_array[count] != nil
            if working_string.length == 0
                if remaining_char >= 2
                    working_string += item + word_array[count]
                end
            else
                working_string += word_array[count]
            end
            remaining_char -= 1
            count += 1
            puts working_string
        end
    end
end

substrings("doctor", ["donut"])




